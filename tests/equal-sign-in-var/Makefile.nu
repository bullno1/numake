all: ! live
	${NUMAKE} sub var="key=value"

sub: << var
	echo "${var}" > $@
