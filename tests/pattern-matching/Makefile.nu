all: gen.out specific.out subdir/gen.out subdir/partial-match-str-that-is-so-loooooooooooooooooooong.out subdir/specific.out ! live

%.out:
	echo "generic,match=$m" > $@

specific.out:
	echo "specific,match=$m" > $@

print:%: << file ! live
	echo $m > ${file}

-include subdir/Makefile.nu
