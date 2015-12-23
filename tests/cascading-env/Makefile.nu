all: ! live
	${NUMAKE} a var=cascaded

a: b ! live # var is not imported

b: ! live # var is not imported
	${NUMAKE} c var2="cascaded too"

c: d << var
	echo $var > $@

d: << var2
	echo $var2 > $@
