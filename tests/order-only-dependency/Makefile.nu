all: | order-only-dep
	touch rebuilt-$@
	touch $@

order-only-dep: dep
	touch rebuilt-$@
	cat dep > $@
