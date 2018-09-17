#include "fcfs.h"

class ProcessComparator
{
  bool operator()(const Process& p1, const Process& p2)
  {
    return p1.tempoDeChegada < p2.tempoDeChegada;
  }
};

FCFS::FCFS(std::vector<Process> processList){
    
    std::sort(processList.begin(), processList.end(), ProcessComparator());
    
    for(int i = 0; i < processList.size(); i++)
    {
        std::cout << processList[i].printProcess() << std::endl;
    }
    
}

bool compareProcessFCFS(Process const & p1, Process const & p2){
    return p1.tempoDeChegada < p2.tempoDeChegada;
}