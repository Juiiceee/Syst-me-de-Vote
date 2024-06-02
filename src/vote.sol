// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
	struct voting {
		uint256 count_for;
		uint256 count_against;
		string description;
	}

	voting[] public tab;
	mapping(address => uint256) public nbVote;
	mapping(uint256 => mapping(address => bool)) public is_voting;

	function createVote(string memory _description) public {
		tab.push(voting(0, 0, _description));
		nbVote[msg.sender]++;
	}

	function display(uint256 _index) public view returns (uint256, uint256, string memory) {
		require(_index < tab.length, "out of bound");
		return (tab[_index].count_for, tab[_index].count_against, tab[_index].description);
	}

	function vote(uint256 _index, bool _notice) public {
		require(_index < tab.length, "out of bound");
		require(is_voting[_index][msg.sender] == false, "not possible to vote twice");
		is_voting[_index][msg.sender] = true;
		if (!_notice) {
			tab[_index].count_against++;
		} else {
			tab[_index].count_for++;
		}
	}
}
