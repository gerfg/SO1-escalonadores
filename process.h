#ifndef PROCESS_H
#define PROCESS_H

#include <iostream>
#include <string>
#include <vector>
#include <fstream>

class Process {
public:
        int tempoDeChegada, tempoDeExecucao;
        int id;
        
        float retorno, espera, resposta;

        static int idCounter;

        // FCFS
        int startExecution;
        int endExecution;

        Process(int chegada, int execucao);
        Process();
        ~Process();

        std::string printInfos();
        std::string printProcess();
};

#endif
