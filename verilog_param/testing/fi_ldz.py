def main():
    for i in range(0,22):
        s = "0" * i
    	s = s + "1"
    	q = "?" * (22-i-1)
    	s = s + q
        j = i+1
        p = ": fi_ldz = " + str(j) + ";"
        t = "22'b"
        s = t+s+p
        print s

main()
