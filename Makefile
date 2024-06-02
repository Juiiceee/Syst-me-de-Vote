script		:= script/DeployVotingSystem.s.sol
RPC			:= http://127.0.0.1:8545
Sepolia		:= https://eth-sepolia.g.alchemy.com/v2/vOn-3QhcPM1S3CZ_DH5rvS7IL2HKwUaV

deploy	:
	forge script $(script) --rpc-url $(RPC) --broadcast --private-key $(private)

.PHONY: deploy