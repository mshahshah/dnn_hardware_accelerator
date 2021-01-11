import os
import pickle


def main():
    Report = {}
    os.chdir('E:\dnn_hardware_model\\ASIC_automation\\reports') # Change this to report directory in your system

    with open('power.rpt', 'r') as f:
        for line in f:
            if 'Total Dynamic Power' in line:
                x = line.split()
                Report['Total Dynamic Power'] = x[4] + x[5]
            if 'Cell Leakage Power' in line:
                x = line.split()
                Report['Cell Leakage Power'] = x[4] + x[5]

    with open('area.rpt', 'r') as f:
        for line in f:
            if 'Combinational area' in line:
                x = line.split()
                Report['Combinational area'] = x[2]
            if 'Noncombinational area' in line:
                x = line.split()
                Report['Noncombinational area'] = x[2]
            if 'Total cell area' in line:
                x = line.split()
                Report['Total cell area'] = x[3]

    with open('timing.rpt', 'r') as f:
        for line in f:
            if 'data arrival time' in line:
                x = line.split()
                Report['data arrival time'] = x[3]

    with open('ASIC_Report.pickle', 'wb') as handle:
        pickle.dump(Report, handle, protocol=pickle.HIGHEST_PROTOCOL)


if __name__ == "__main__":
    main()
