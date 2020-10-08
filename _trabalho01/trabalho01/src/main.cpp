#include <iostream>
#include "sensorvazao.h" // entre aspas duplas pois está dentro de uma pasta do projeto

using namespace std;

using namespace std;

void fooVazao(SensorVazao &s)
{
    s.confirmaLeitura();
}

int main()
{
    vector<string> headers = {"Nome do Sensor", "ID do sensor", "Unidade das medicoes", "Numero de amostras por segundo", "Horario inicio da coleta", "Total de Amostras"};
    SensorVazao vazaoIn("C:\\Users\\melis\\Desktop\\VSCode\\_trabalho01\\trabalho01\\dados\\SensorVazao1.dat", headers);
    vazaoIn.lerDados();

    SensorVazao vazaoOut("C:\\Users\\melis\\Desktop\\VSCode\\_trabalho01\\trabalho01\\dados\\SensorVazao2.dat", headers);
    vazaoOut.lerDados();

    fooVazao(vazaoIn);
    fooVazao(vazaoOut);

    //################################ RESERVATORIO ###############################

    int hora, min, seg, indice, op;

    //cout << "Opcao RESERVATORIO selecionada. Menu: " << endl;
    //cout << "1 - Vazao de entrada em um determinado instante" << endl;
    //cout << "2 - Vazao de saida em um determinado instante" << endl;
    //cout << "3 - Volume em um determinado instante" << endl;
    //cout << "Opcao Escolhida: " << endl;
    //cin >> op;

    cout << "Digite a hora: ";
    cin >> hora;
    cout << "Digite o minuto: ";
    cin >> min;
    cout << "Digite o segundo: ";
    cin >> seg;

    indice = hora * 3600 + min * 60 + seg;
    indice = indice - 65335;

    cout << indice<< endl;

    double volumeIn = vazaoIn.getVolume(indice);
    double volumeOut = 1000 * vazaoOut.getVolume(indice);

    cout << "Vazao de entrada neste horario: " << vazaoIn.getDado(indice) << vazaoIn.getUnidade() << endl;
    cout << "Vazao de saida neste horario: " << vazaoOut.getDado(indice) << vazaoIn.getUnidade() << endl;
    cout << "Volume no reservatorio neste horario: " << volumeIn - volumeOut << " litros." << endl;

    

    return 0;
}
