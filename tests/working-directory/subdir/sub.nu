sub: << EXPECTED_PWD ! live
	assert-equal '${EXPECTED_PWD}' '$(pwd)'

# This recipe is defined in a sub directory, yet it defines a target residing
# in the parent directory
# This is legal, although not recommended
../tricky: << EXPECTED_PWD ! live
	assert-equal '${EXPECTED_PWD}' '$(pwd)'

-include ../another.nu
