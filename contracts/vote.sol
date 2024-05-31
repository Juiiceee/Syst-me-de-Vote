// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract vote {
    struct voting {
        uint count_for;
        uint count_against;
        string description;
    }

    voting[] public tab;

    function createVote(string memory _description) public {
        tab.push(voting(0, 0, _description));
    }

    function display(uint _index) public view returns(uint, uint, string memory) {
        require(_index < tab.length, "out of bound");
        return (tab[_index].count_for, tab[_index].count_against, tab[_index].description);
    }


}