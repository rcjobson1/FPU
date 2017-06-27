def main():
    for i in range(0,10):
        s = "0" * i
    	s = s + "1"
    	q = "?" * (10-i-1)
    	s = s + q
        j = i+1
        p = ": div_opa_ldz_d = " + str(j) + ";"
        t = "10'b"
        s = t+s+p
        print s

main()
