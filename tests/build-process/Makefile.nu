double-%: %
	echo $@ >> log
	cat $m > $@
	cat $m >> $@

a: b c
	echo $@ >> log
	cat b c > $@

b: c
	echo $@ >> log
	cat c > $@

c: double-d << VAR
	echo $@ >> log
	cat double-d >> $@
