check-start-dir: << EXPECTED_START_DIR NUMAKE_START_DIR ! live
	assert-equal '${EXPECTED_START_DIR}' '${NUMAKE_START_DIR}'

check-root-dir: << EXPECTED_ROOT_DIR NUMAKE_ROOT ! live
	assert-equal '${EXPECTED_ROOT_DIR}' '${NUMAKE_ROOT}'
