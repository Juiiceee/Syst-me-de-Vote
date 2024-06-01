script		:= script/DeployVotingSystem.s.sol
RPC			:= http://127.0.0.1:8545

deploy	:
	forge script $(script) --rpc-url $(RPC) --broadcast --private-key $(private)

.PHONY: deploy