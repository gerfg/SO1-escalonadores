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

    void printExitFCFS();
};

bool compareProcessSJF(Process p1, Process p2);

#endif