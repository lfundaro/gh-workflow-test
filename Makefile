all: integration-test1 integration-test2

integration-test1: out/integration-test1
.PHONY: integration-test1

out/integration-test1:
	mkdir -p $(@D)
	echo "executing a 10s integration test1"
	/bin/sleep 10
	touch $@

check_files_on_out:
	ls -lRa out
.PHONY: check_files_on_out

integration-test2: out/integration-test2
.PHONY: integration-test2

out/integration-test2:
	mkdir -p $(@D)
	echo "executing a 10s integration test2"
	/bin/sleep 10
	touch $@
