all: regular1 regular2 | order3 order4 ! live
	echo $deps > deps
	echo $order_deps > order_deps

regular%: ! live

order%: ! live
