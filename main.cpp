#include "process.h"
#include "fcfs.h"
#include "sjf.h"
#include "rr.h"
#include "util.h"

int main(int argc, char const *argv[]) {

    
    if (argc < 2) {
        std::cout << "Faltando Parâmetros. \n ./escalonadores [instancia]" << std::endl;
    } 
    else {
        std::vector<Process> process;
        process = readInstance(argv[1]);
        
        FCFS fcfs(process);
        fcfs.calcTimes(process.size());
        fcfs.printExitFCFS();

        SJF sjf(process);
        sjf.calcTimes();
        sjf.printExitSJF();

        RR rr(process, 2);
        rr.calcTimes(process.size());
        rr.printExit();
    }
    
    return 0;
}