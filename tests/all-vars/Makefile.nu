all: ! live
	${NUMAKE} test SOME_VAR=some-value

test: ! all-vars
	echo "${SOME_VAR}" > $@
