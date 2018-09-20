#ifndef SJF_H
#define SJF_H

#include "process.h"
#include <algorithm>

class SJF {
public:
    std::vector<Process> executionList;

    float retornoMedio, respostaMedia, esperaMedia;

    SJF(std::vector<Process> processList);
    void calcTimes();

    void printExitSJF();
};

bool compareProcessSJF(Process p1, Process p2);
bool compareProcessArrivedList(Process p1, Process p2);
void showProcessList(std::vector<Process> prc, std::string name);

#endif