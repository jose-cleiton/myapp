import os
from src.myapp import search

if __name__ == "__main__":

    os.system("cls" if os.name == "nt" else "clear")

    lista_estranha = [8, "5", 32, 0, "python", 11, 7, 12, 15, 87]
    elemento = 0
    i = search(lista_estranha, elemento)
    if i is not None:
        print("O índice do elemento {} é {}, ".format(elemento, i))
    else:
        print("O elemento {} não está na lista".format(elemento))
