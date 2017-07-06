from sys import argv
def main():
    file1 = argv[1]
    file2 = argv[2]

    compare_files(file1, file2)

def compare_files(file1, file2):
    f1 = open(file1, "r")
    f2 = open(file2, "r")


    base_results = []
    test_results = []

    for line in f1:
        line = line.strip()
        if line[-1] == "L":
            line = line[:-1]
        line = int(line, 16)
        base_results.append(line)
    for line in f2:
        line = line.strip()
        if line[-1] == "L":
            line = line[:-1]
        line = int(line, 16)
        test_results.append(line)


    for i in range(0, len(base_results)):
        if base_results[i] == test_results[i]:
            print "Test " + str(i+1) + " passed"
        else:
            print "Test " + str(i+1) + " FAILED"
            print "Expected: " + hex(base_results[i]) + " Got: " + hex(test_results[i])

main()
