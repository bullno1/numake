scoped = inner
wat = `cat wat`

all: ${var} scoped inner check-pwd << var default
	echo ${default} > $@

%-$suffix: %
	echo ${default} > $@ # Variable not imported so it will be empty

abcd: << default2
	echo ${default2:-default2_val} > $@

inner: << scoped
	echo ${scoped} > $@

check-pwd: << wat
	echo ${wat} > $@
