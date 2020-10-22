import random
from numpy import mean

modulos=["BinaryDigit",
         "FlipFlopD",
         "PC",
         "Ram4K",
         "Ram8",
         "Ram64",
         "Ram512",
         "Register8",
         "Register16",
         "Register32",
         "Register64",
         "TopLevel",
         "CounterDown",
         "FlipFlopJK",
         "FlipFlopT"]

assign={"Dani":[],
        "Timao":[],
        "Rafa":[],
        "Leo":[],
        "Joao":[]}

qtd=int(round(len(modulos)/len(assign)))
print(qtd)


while modulos != []:
    for i in assign.keys():
        if not modulos:
            break
        modulo=random.choice(modulos)
        if len(assign[i])<qtd:
            assign[i].append(modulo)
            modulos.remove(modulo)

for i, j in assign.items():
    print (i + ' tem que fazer ' + str(j))