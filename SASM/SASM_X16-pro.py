#reserve 10101010 for a JTAG programming instruction
#XX101010 XXXXXXXX is reserved for programming


Instructions = {"NOP":    "10111111 00000000",
                "LDM":    "10000000 WWWWWWWW", #load from main
                "JMP":    "10000010 00000000",
                "JPE":    "10000101 00000000",
                "JPC":    "10000100 00000000",

                "LDA":    "10001001 WWWWWWWW", #load port A
                "LDB":    "10001011 WWWWWWWW", #load port B

                "FLF":    "11110011 LLLL RRRR",
                "FLT":    "11111100 LLLL RRRR",
                "SUM":    "11001001 LLLL RRRR",
                "SUB":    "11010110 LLLL RRRR",
                "AOT":    "11111111 LLLL RRRR",
                "BOT":    "11111010 LLLL RRRR",
                "AMM":    "11001111 LLLL RRRR",
                "NTA":    "11110000 LLLL RRRR",
                "NTB":    "11110101 LLLL RRRR",
                "XOR":    "11111001 LLLL RRRR",
                "AND":    "11111110 LLLL RRRR",
                "ORR":    "11111011 LLLL RRRR",
                "LSH":    "11011100 LLLL RRRR",
                "CMP":    "11000110 LLLL RRRR",

                "LKB":    "10001000 WWWWWWWW", #load keyboard #the (13 down to 8) must be unique compared to the alu commands


                "MEO":    "10110001 WWWWWWWW",

                "MEN":    "10110000 00000000",

                "STK":   "10110010 00000000",
                "USK":   "10110011 WWWWWWWW",

                "STC":    "0 CCCCCCCCCCCCCCC" #a LDI command
              }




#these need to be inverted
#register mappings
#one hot
#LDI, MEO, USK
RegLoadMapGeneral =
        {"Main":     "1111 1110",
          "R1":      "1111 1101",
          "R2":      "1111 1011",
          "RJB":     "1111 0111",
          "RSP":     "1110 1111",
          "RMA":     "1101 1111",
          "PortC":   "1011 1111",
          "PortD":   "0111 1111"
          }

#ALU Input controls
LeftALU = { "Main": "0111",
            "R1":   "1011",
            "RJB":  "1101",
            "RMA":  "1110",
            }

RightALU = { "Main": "0111",
             "R2":   "1011",
             "RJB":  "1101",
             "RMA":  "1110",
            }
