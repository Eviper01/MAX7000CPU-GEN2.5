import sys
########################################
#Things the Assembler needs to do
#Read a file
#Inteperte constants and poitners
#Inteperet expilict memoery location deifneintions
#Idenetify commands
#Identify arguemnts


#######
#microcode definitonat

Generic_Opcodes ={  "NOP":    "1011111100000000",
                    "JMP":    "1000001000000000",
                    "JPE":    "1000010100000000",
                    "JPC":    "1000010000000000",
                    "MEN":    "1011000000000000",
                    "STK":    "1011001000000000"}

#these define the high bit
OutputParam_Opcodes = { "LDM":    "10000000",
                        "RDC":    "10001001",
                        "RDA":    "10001011",
                        "LKB":    "11001000", # this needs to be programmed into the FPGA aswell (10001000)
                        "MEO":    "10110001",
                        "USK":    "10110011"}

#these define the low bit
OutputParam_Params = { "MAIN":     "11111110",
                        "R1":      "11111101",
                        "R2":      "11111011",
                        "RJB":     "11110111",
                        "RSP":     "11101111",
                        "RMA":     "11011111",
                        "PORTA":   "10111111",
                        "PORTB":   "01111111"}


#these define the high bit
DualInputParam_Opcodes =  { "FLF":    "11110011",
                            "FLT":    "11111100",
                            "SUM":    "11001001",
                            "SUB":    "11010110",
                            "AOT":    "11111111",
                            "BOT":    "11111010",
                            "AMM":    "11001111",
                            "NTA":    "11110000",
                            "NTB":    "11110101",
                            "XOR":    "11111001",
                            "AND":    "11111110",
                            "ORR":    "11111011",
                            "LSH":    "11011100",
                            "CMP":    "11000110"}

#this is (7 downto 4)
RightALU = { "MAIN": "1110",
             "R2":   "1101",
             "RJB":  "1011",
             "RMA":  "0111"}
#this is (3 downto 0)
LeftALU = { "MAIN": "1110",
            "R1":   "1101",
            "RJB":  "1011",
            "RMA":  "0111"}




Constants = {"STC":    "0"}



def read_sasm(file):
    f = open(file, 'r')
    program = f.readlines()
    f.close()
    return program


def intepret_constants(program):
    labels = []
    pointers = []
    for i in range(len(program)):
        if program[i].split()[0][0] == "&":
            # print("".join(list(program[i].split()[0][1:len(program[i].split()[0])])))
            label = program[i].split()[0]
            if label not in labels:
                labels.append(label)
                pointers.append(i)
            else:
                print("warning: line ({line}) pointer {pointer} already used @ line ({line2})".format(line=i, pointer=label, line2=pointers[labels.index(label)]))
            line = program[i].split()
            line.pop(0)
            program[i] = " ".join(line)
    for i in range(len(pointers)):
        for j in range(len(program)):
            program[j] = program[j].replace(labels[i], str(pointers[i]))
    return program

def intepret_opcodes(program):
    assembled = []
    for line, i in enumerate(program):
        Success = False
        #check if it a constant
        if(i.split()[0].upper() in Constants):
            bytestring = '{0:0015b}'.format(int(i.split()[1]))
            assembled.append(Constants[i.split()[0].upper()] + bytestring)
            Success = True
        #check if generic opcode
        if(i.split()[0].upper() in Generic_Opcodes):
            assembled.append(Generic_Opcodes[i.split()[0].upper()])
            Success = True
        #check if takes an output parameter
        if(i.split()[0].upper() in OutputParam_Opcodes):
            if(i.split()[1].upper() not in OutputParam_Params):
                assembled.append(OutputParam_Opcodes[i.split()[0].upper()] + "11111111")
                print("warning: line ({line}): {expression} Invalid Register {register}. Operation call will not be written to anywhere".format(line=line, expression=i, register=i.split()[1].upper()))
            else:
                assembled.append(OutputParam_Opcodes[i.split()[0].upper()] + OutputParam_Params[i.split()[1].upper()])
            Success = True
        #check if takes an dual parameter
        if(i.split()[0].upper() in DualInputParam_Opcodes):
            Left_Valid = True
            Right_Valid = True
            if(i.split()[1].upper() not in LeftALU):
                    Left_Valid = False
                    print("warning: line ({line}): {expression} Invalid Register {register}. This input will be left floating".format(line=line, expression=i, register=i.split()[1].upper()))
            if(i.split()[2].upper() not in RightALU):
                    Right_Valid = False
                    print("warning: line ({line}): {expression} Invalid Register {register}. This input will be left floating".format(line=line, expression=i, register=i.split()[2].upper()))
            #all the validity has been checked now assmeble based on the situation
            if(Left_Valid and Right_Valid):
                assembled.append(DualInputParam_Opcodes[i.split()[0].upper()] + RightALU[i.split()[2].upper()] + LeftALU[i.split()[1].upper()])
            if(Left_Valid and not Right_Valid):
                assembled.append(DualInputParam_Opcodes[i.split()[0].upper()] + "1111" + LeftALU[i.split()[1].upper()])
            if(not Left_Valid and Right_Valid):
                assembled.append(DualInputParam_Opcodes[i.split()[0].upper()] + RightALU[i.split()[2].upper()] + "1111")
            if (not Left_Valid and not Right_Valid):
                assembled.append(DualInputParam_Opcodes[i.split()[0].upper()] + "11111111")
            Success = True

        #give an error message
        if(not Success):
            print("Error: line ({line}): {expression}, Invalid operation, Aborting Assembler".format(line=line, expression=i))
            exit()

    return assembled

def hex_format(item):
    hexer = str(hex(int(item, 2)))
    hexer = hexer[2:len(str(hex(int(item, 2))))]
    if len(hexer) == 1:
        return "0" + hexer
    else:
        return hexer

def write_hex(assembled, filename):
    with open(filename, 'w') as f:
        for item in assembled:
            f.write("%s" % hex_format(item))
        f.write("\n")
    print("compiled to out.hex as hex")
    return 0

def write_binary(assembled, filename):
    with open(filename, 'w') as f:
        for item in assembled:
            f.write("%s\n" % item)
    print("Compiled to out.bin as binary")
    return 0


def main():
    try:
        program = read_sasm(sys.argv[1])
    except Exception as e:
        print(e)
        print("Wrong Input file specified")
        exit()



    program = intepret_constants(program)
    assembled = intepret_opcodes(program)
    try:
        if sys.argv[2] == "-h":
            write_hex(assembled, "out.hex")
            exit()
    except Exception as e:
        pass
    write_binary(assembled, "out.bin")
    exit()

main()











# #reserve 10101010 for a JTAG programming instruction
# #XX101010 XXXXXXXX is reserved for programming
#
#
# Instructions = {"NOP":    "10111111 00000000",
#                 "LDM":    "10000000 WWWWWWWW", #load from main
#                 "JMP":    "10000010 00000000",
#                 "JPE":    "10000101 00000000",
#                 "JPC":    "10000100 00000000",
#
#                 "LDA":    "10001001 WWWWWWWW", #load port A
#                 "LDB":    "10001011 WWWWWWWW", #load port B
#
#                 "FLF":    "11110011 LLLL RRRR",
#                 "FLT":    "11111100 LLLL RRRR",
#                 "SUM":    "11001001 LLLL RRRR",
#                 "SUB":    "11010110 LLLL RRRR",
#                 "AOT":    "11111111 LLLL RRRR",
#                 "BOT":    "11111010 LLLL RRRR",
#                 "AMM":    "11001111 LLLL RRRR",
#                 "NTA":    "11110000 LLLL RRRR",
#                 "NTB":    "11110101 LLLL RRRR",
#                 "XOR":    "11111001 LLLL RRRR",
#                 "AND":    "11111110 LLLL RRRR",
#                 "ORR":    "11111011 LLLL RRRR",
#                 "LSH":    "11011100 LLLL RRRR",
#                 "CMP":    "11000110 LLLL RRRR",
#
#                 "LKB":    "10001000 WWWWWWWW", #load keyboard #the (13 down to 8) must be unique compared to the alu commands
#
#
#                 "MEO":    "10110001 WWWWWWWW",
#
#                 "MEN":    "10110000 00000000",
#
#                 "STK":   "10110010 00000000",
#                 "USK":   "10110011 WWWWWWWW",
#
#                 "STC":    "0 CCCCCCCCCCCCCCC" #a LDI command
#               }
#
#
#
# #one hot
# #LDI, MEO, USK
# RegLoadMapGeneral =
#         {"Main":     "1111 1110",
#           "R1":      "1111 1101",
#           "R2":      "1111 1011",
#           "RJB":     "1111 0111",
#           "RSP":     "1110 1111",
#           "RMA":     "1101 1111",
#           "PortC":   "1011 1111",
#           "PortD":   "0111 1111"
#           }
#
# #ALU Input controls
#need to be rotated !!!!
# LeftALU = { "Main": "0111",
#             "R1":   "1011",
#             "RJB":  "1101",
#             "RMA":  "1110",
#             }
#
# RightALU = { "Main": "0111",
#              "R2":   "1011",
#              "RJB":  "1101",
#              "RMA":  "1110",
#             }
