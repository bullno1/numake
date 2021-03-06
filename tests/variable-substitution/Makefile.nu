suffix = efgh
var = abcd-${suffix}
default = ${default:-default_val}
scoped = outer

var2 = abcd
var3 = ${var3:-abcd}
var4 = ${var2} + ${var3}

-import sub/sub.nu

scoped: << scoped
	echo ${scoped} > $@

check-consistency: ${var2}.check ${var3}.check << var2 var3 ! live

check-consistency2: << var2 var3 var4 ! live
	assert-equal '"${var2} + ${var3}"' '"${var4}"'

check-param: << var5 ! live
	assert-equal '""' '"${var2}"'
	assert-equal '""' '"${var3}"'
	assert-equal '""' '"${var4}"'
	assert-equal '"wat"' '"${var5}"'

$var2.check: ${var2}.ignore << var2 ! live
	assert-equal ${@%.*} ${deps%.*}
	assert-equal ${@%.*} ${var2}

$var3.check: ${var3}.ignore << var3 ! live
	assert-equal ${@%.*} ${deps%.*}
	assert-equal ${@%.*} ${var3}

%.ignore: ! live
