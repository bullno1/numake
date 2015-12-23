all: a
	touch rebuilt
	cat ${deps} > $@

a: b ${test_dir}/run << test_dir
	touch rebuilt
	cat ${deps} > $@

b: c
	touch rebuilt
	cat ${deps} > $@
