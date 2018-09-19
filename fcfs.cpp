#include "fcfs.h"

FCFS::FCFS(std::vector<Process> processList){
    
    std::sort(processList.begin(), processList.end(), comparePrcs);
    
    for(int i = 0; i < processList.size(); i++)
    {
        std::cout << processList[i].printProcess() << std::endl;
    }
    
}
