#include "util.h"

std::vector<Process> readInstance(std::string file) {

    std::vector<Process> prcs;

    std::fstream read (file, std::fstream::in | std::fstream::out);

    int chegada, execucao;

    while(true){
        read >> chegada;
        read >> execucao;
        if( read.eof() ) break;
        prcs.push_back(Process(chegada,execucao));
    }

    read.close();    

    return prcs;
}

void showProcesses(std::vector<Process> prc, std::string name) {
    std::cout << name << std::endl;
    for(int i = 0; i < prc.size(); i++) {
        std::cout << prc[i].printProcess() << '\n';
    }
    std::cout << std::endl;
}