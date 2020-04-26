import random


def main():
    f0 = open("declara_w.txt", "w+")
    for i in range(48):
        f0.write("print(\"x_" + str(i) + " = \", x_"+ str(i) + ")"'\n')
    f0.close()

    f1 = open("vetor_x.txt", "w+")
    for i in range(48):
        f1.write("x[" + str(i) + "] = " + str(random.randint(0, 100)) + ";" '\n')
    f1.close()

    f2 = open("matriz_w.txt", "w+")
    for i in range(48):
        for j in range(48):
            f2.write("h" + str(i) + "[" + str(j) + "] = " + str(random.randint(0, 100)) + ";" '\n')
    f2.close()

    f3 = open("declara_y.txt", "w+")
    for i in range(48):
        f3.write("mi" + str(i) + "[i] = mi*w" + str(i) + "[i];"'\n')
    f3.close()

    f4 = open("gera_loop.txt", "w+")
    for i in range(48):
        f4.write("miwd[" + str(i) + "] = miwd[" + str(i) + "] + miw" + str(i) + "[i]*d[i];" '\n')
    f4.close()

    f5 = open("vetor_d.txt", "w+")
    for i in range(48):
        f5.write("d[" + str(i) + "] = " + str(random.randint(0, 100)) + ";" '\n')
    f5.close()

    f6 = open("vetor_x_novo.txt", "w+")
    for i in range(48):
        f6.write("aux[" + str(i) + "] = aux[" + str(i) + "] + x[i]*h" + str(i) + "[i];" '\n')
    f6.close()

    f7 = open("matriz_miw.txt", "w+")
    for i in range(48):
        f7.write("LOAD mainaux_" + str(i) + "'\n'")
        f7.write("PSET mainx_" + str(i))
    f7.close()

    f8 = open("que.txt", "w+")
    for i in range(48):
        f8.write("LOAD mainaux_" + str(i) + '\n' + "PSET mainx_" + str(i) + '\n')
    f8.close()

    f9 = open("multicore.txt", "w+")
    for i in range(146):
        f9.write(str(i) + ": begin rst"+ str(i) +" <= 0; if (cnt <= 32'd210) cnt=cnt+32'd1; else begin q <= q+32'd1; cnt=0; end	end"+ '\n')
    f9.close()


if __name__ == "__main__":
    main()
