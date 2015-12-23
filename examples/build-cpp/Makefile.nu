BUILD_DIR = ${BUILD_DIR:-tmp}
C_FLAGS = -Wall -Werror
CPP_FLAGS = -Wall -Werror

-import cpp.nu

all: program ! live

program: << C_FLAGS
	${NUMAKE} exe:$@ \
		sources="`find src -name '*.cpp' -or -name '*.c'`" \
		c_flags="${C_FLAGS} -pedantic"
