all: a c b
	echo $@ >> log
	touch $@

a: ! live
	echo $@ >> log

b: a
	echo $@ >> log
	touch $@

c: b
	echo $@ >> log
	touch $@
