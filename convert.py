
from sys import argv, exit
from statistics import stdev, mean

N_TESTS = 5

def pipeline(path):
    file_no_stem = path.split(".")[0]

    mean_throughputs_in = []
    std_throughputs_in = []

    mean_delays = []
    std_delays = []

    mean_timeout_errors = []
    std_timeout_errors = []

    current_timeout_errors = []
    current_delays = []
    current_throughputs_in = []

    i = 0
    infile = open(path, "r")
    for line in infile:
        if line == "\n" or line[:2] == "//" or line[:4] == "Test" or line[:1] == "x" or line[:5] == "H/F/S" or line[:1] == "=":
            continue

        line = line.rstrip()
        sub = line.split("   ")[1]
        data = sub.split(",")

        timeout_err = int(data[7].split(":")[1])
        delay = float(data[9].split(":")[1][:-2])
        throughput_in = float(data[10].split(":")[1][:-3])

        current_timeout_errors.append(timeout_err)
        current_delays.append(delay)
        current_throughputs_in.append(throughput_in)

        i += 1

        if i % N_TESTS == 0:
            mean_timeout_error = mean(current_timeout_errors)
            std_timeout_error = stdev(current_timeout_errors)

            mean_delay = mean(current_delays)
            std_delay = stdev(current_delays)

            mean_throughput_in = mean(current_throughputs_in)
            std_throughput_in = stdev(current_throughputs_in)

            mean_timeout_errors.append(mean_timeout_error)
            std_timeout_errors.append(std_timeout_error)

            mean_delays.append(mean_delay)
            std_delays.append(std_delay)

            mean_throughputs_in.append(mean_throughput_in)
            std_throughputs_in.append(std_throughput_in)
        
    export(mean_timeout_errors, std_timeout_errors, file_no_stem + "-timeout_error.csv")
    export(mean_delays, std_delays, file_no_stem + "-delay.csv")
    export(mean_throughputs_in, std_throughputs_in, file_no_stem + "-throughput.csv")

def export(means, stds, name):
    outfile = open(name, "w")
    outfile.write("1,10,20,30,40\n")

    for i in range(len(means)):
        outfile.write(str(means[i]))
        if i + 1 < len(means):
            outfile.write(',')
        else:
            outfile.write("\n")

    for i in range(len(stds)):
        outfile.write(str(stds[i]))
        if i + 1 < len(stds):
            outfile.write(',')
        else:
            outfile.write("\n")

    for i in range(len(means)):
        outfile.write(str(len(means)))
        if i + 1 < len(means):
            outfile.write(',')
        else:
            outfile.write("\n")

    outfile.close()


if len(argv) < 2:
    exit(1)

for s in range(1, len(argv)):
    pipeline(argv[s])
