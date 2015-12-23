var1 ?= a
var1 ?= b

var2 = a
var2 ?= b

var3 =
var3 ?= wat

all: << var1 var2 var3 ! live
	echo ${var1} > var1
	echo ${var2} > var2
	echo ${var3} > var3
