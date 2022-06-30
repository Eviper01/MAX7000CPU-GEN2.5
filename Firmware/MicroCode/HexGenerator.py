import pandas as pd
from collections import Counter
import mmap
import math
df = pd.read_csv("X16 Microcode.csv", header=1)

#add the safe state as the default when writing to the HEX

def SMC(line):
    InputStrings = [("0"*(8-math.floor(math.log(n,2))))+bin(n)[2:] for n in range(1,128)] + ["00000000"]
    output = []
    for string in InputStrings:
        output.append(string+line["Q0"]+line["Q1"] + line["Q2"]+"00")
        output.append(string+line["Q0"]+line["Q1"] + line["Q2"]+"01")
        output.append(string+line["Q0"]+line["Q1"] + line["Q2"]+"10")
        output.append(string+line["Q0"]+line["Q1"] + line["Q2"]+"11")
    return output


def line_input_vector(line):
        #computer the input vector:
        if line["Instruction (15 downto 8)"] == "0XXXXXXX":
            # print(SMC(line))
            # print(len(SMC(line)))
            # LengthCounter = Counter([len(x) for x in SMC(line)])
            # print(LengthCounter)
            # exit()
            return SMC(line)
        StateAndInstruction = line["Instruction (15 downto 8)"]+line["Q0"]+line["Q1"] + line["Q2"]
        #compute the flags
        if line["AB FLAG"] == "X" and line["Carry Flag"] == "X":
            return [StateAndInstruction+"00",StateAndInstruction+"01",StateAndInstruction+"10",StateAndInstruction+"11"]
        if line["AB FLAG"] == "X" and line["Carry Flag"] != "X":
            return [StateAndInstruction+"0"+line["Carry Flag"],StateAndInstruction+"1"+line["Carry Flag"]]
        if line["AB FLAG"] != "X" and line["Carry Flag"] == "X":
            return [StateAndInstruction+line["AB FLAG"]+"0",StateAndInstruction+line["AB FLAG"]+"1"]
        return [StateAndInstruction+line["AB FLAG"]+line["Carry Flag"]]

def line_output_vector(line):
    value1 = list(line[10:18])
    value2 = list(line[19:27])
    try:
        return ["".join(value1),"".join(value2)]
    except:
        return [-1,-1]

def process_line(line):
    inputs = line_input_vector(line)
    outputs = line_output_vector(line)
    return [(input,outputs[0]) for input in inputs],[(input,outputs[1]) for input in inputs]

def GrabHexValues():
    output1 = []
    output2 = []
    for index, row in df.iterrows():
        data = process_line(row)
        for pair in data[0]:
            try:
                output1.append((int(pair[0],2),int(pair[1],2)))
            except:
                pass
        for pair in data[1]:
            try:
                output2.append((int(pair[0],2),int(pair[1],2)))
            except:
                pass

    #checking that this is a function:
    IsFunction = True
    InputCount = (Counter([x for (x,y) in output1]))
    for key in InputCount.keys():
        if InputCount[key] != 1:
            print(key)
            IsFunction = False
    InputCount = (Counter([x for (x,y) in output2]))
    for key in InputCount.keys():
        if InputCount[key] != 1:
            print(key)
            IsFunction = False
    if IsFunction:
        print("Success")
        return [output1, output2]

def GenerateCompleteHexMap(Mods, Safe):
    AddressCounter = Counter([x for (x,y) in Mods])
    for i in range(2**13):
        if i not in (AddressCounter.keys()):
            Mods.append((i,Safe))
    return Mods

def HexDump(HexMap, target):
    HexMap = (dict(HexMap))
    with open(target, "r+b") as file:
        mm = mmap.mmap(file.fileno(),0)
        for i in range(2**13):
            mm.write_byte(HexMap[i])
        mm.close()


#define safe state:
#
# 01011101 10011111
# =93 for first chip
# =159 for second chip




HV1 = GrabHexValues()[0]
HV2 = GrabHexValues()[1]

HexDump(GenerateCompleteHexMap(HV1, 93), "chip1.BIN")
HexDump(GenerateCompleteHexMap(HV2, 159), "chip2.BIN")







# #hex editor.
#
# with open("test.BIN", "r+b") as file:
#     mm = mmap.mmap(file.fileno(), 0)
#     mm.write_byte(10)
#     mm.close()
