all: << EXPECTED_PWD ! live
	assert-equal '${EXPECTED_PWD}' '$(pwd)'

-include  subdir/sub.nu       # how about this?
-import   subdir/sub2.nu      # how about this?
