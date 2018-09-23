#include "rr.h"

RR::RR(std::vector<Process> processList, int quantum):quantum{quantum}{
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;
    
    std::sort(processList.begin(), processList.end(), compareProcessRR);

    createExecutionList(&executionList, &processList, quantum);
    
    // showProcesses(executionList, "ExecutionList");
}

void createExecutionList(std::vector<Process> *executionList, std::vector<Process> *processList, int quantum) {
    std::queue<Process> ready;
    int timeOfLastExecutedProcess = (*processList)[0].startExecution;
    Process processUnfinished;

    bool unfinished = false;

    while((*processList).size() != 0 || ready.size() != 0 || unfinished){

        getArrivedProcesses(processList, &ready, timeOfLastExecutedProcess);

        if (unfinished) {
            ready.push(processUnfinished);
            unfinished = false;
        }

        if (ready.front().tempoDeExecucao <= quantum) {
            (*executionList).push_back(ready.front());
            ready.pop();

            updateLastProcessInExecutionList(executionList, &timeOfLastExecutedProcess, quantum, true);

        } else {
            (*executionList).push_back(ready.front());
            ready.pop();

            updateLastProcessInExecutionList(executionList, &timeOfLastExecutedProcess, quantum, false);

            processUnfinished = (*executionList)[(*executionList).size()-1];
            unfinished = true;
        }
    }
}


void getArrivedProcesses(std::vector<Process> *processList, std::queue<Process> *ready, int lastExecutedTime){
    int i = 0;
    while( (*processList)[i].tempoDeChegada <= lastExecutedTime && i != (*processList).size()){
        (*ready).push((*processList)[i]);
        i++;
    }
    (*processList).erase((*processList).begin(), (*processList).begin()+i);
}

void updateLastProcessInExecutionList(std::vector<Process> *executionList, int *lastExecutedTime, int quantum, bool finished) {
    int execIter = (*executionList).size()-1;
    if (finished) {
        int execIter = (*executionList).size()-1;
        (*executionList)[execIter].startExecution = *lastExecutedTime;
        (*executionList)[execIter].endExecution = (*executionList)[execIter].startExecution + (*executionList)[execIter].tempoDeExecucao;
        (*executionList)[execIter].tempoDeExecucao -= quantum;
    } else {
        int execIter = (*executionList).size()-1;
        (*executionList)[execIter].startExecution = *lastExecutedTime;
        (*executionList)[execIter].endExecution = (*executionList)[execIter].startExecution + quantum;
        (*executionList)[execIter].tempoDeExecucao -= quantum;
    }
    *lastExecutedTime = (*executionList)[execIter].endExecution;
}

void RR::calcTimes(int processesCount){
    std::vector<int> countExecutionProcesses (processesCount+1);
    std::cout << countExecutionProcesses.size() << std::endl;
}

bool compareProcessRR(Process p1, Process p2){
    if (p1.tempoDeChegada == p2.tempoDeChegada) {
        return p1.tempoDeExecucao < p2.tempoDeExecucao;
    } else {
        return p1.tempoDeChegada < p2.tempoDeChegada;
    }
}