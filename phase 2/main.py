def regtostr(x):
    num = bin(int(x)).replace('0b' , '')
    num = ((4 - len(num)) * '0') + num
    return num

#for immediate
def regtostr8(x):
    num = bin(int(x)).replace('0b' , '')
    num = ((8 - len(num)) * '0') + num
    return num


def r_type_instructions(op , rs , rt , rd , function):
    res = list()
    res.append(op)
    res.append(regtostr(rs))
    res.append(regtostr(rt))
    res.append(regtostr(rd))
    res.append(function)
    return res

def i_type_instructions(op , rs , rt , imm):
    res = list()
    res.append(op)
    res.append(regtostr(rs))
    res.append(regtostr(rt))
    res.append(regtostr8(imm))
    return res


def resultstr(our_list):
    final = list()
    for i in our_list:
        decimal = int(i, 2)
        hexi = hex(decimal)
        final.append(hexi[2:])
    if len(final[-1]) == 1 and len(our_list) == 4:
        final[-1] = '0'+final[-1]
    return final

input_file = open("input.txt" , 'r')
output_file = open("output.txt" , 'w')

output_file.write("00000\n")

all_lines = input_file.readlines()

c = 0

for x in all_lines:
    c += 1
    res = list()

    temp = x.strip()

    line_split = temp.split()

    tt = line_split[0]

    if(tt == "add"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0001")
    elif(tt == "sub"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0010")
    elif(tt == "mul"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0011")
    elif(tt == "div"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0100")
    elif(tt == "and"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0101")
    elif(tt == "or"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0110")
    elif(tt == "nand"):
        res = r_type_instructions("0000" , line_split[1] , line_split[2] , line_split[3] , "0111")
    elif(tt == "lw"):
        res = i_type_instructions("0001" , line_split[3] , line_split[1] , line_split[2])
    elif(tt == "sw"):
        res = i_type_instructions("1000" , line_split[3] , line_split[1] , line_split[2])
    elif(tt == "bne"):
        res = i_type_instructions("1001" , line_split[1] , line_split[2] , line_split[3])

    ttemp = resultstr(res)

    ans = ''.join(ttemp) + '\n'
    output_file.write(ans)
    

    