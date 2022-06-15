//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Dwitter {
    //_________________day1
    //     string public name ='chirag';
    // //   constructor(string memory _name) public {
    // //     name =_name;
    // //   }

    // //    function getName() public view returns (string memory) {
    // //     return name;
    // //    }

    //    function setName(string memory _name) public {
    //     name =_name;
    //    }

    //__________________day2

    struct User {
        address wallet;
        string name;
        string username;
        string bio;
        string avtar;
    }
    mapping(address => string) public usernames;
    mapping(string => User) public users;

    function signup(
        string memory _username,
        string memory _name,
        string memory _bio,
        string memory _avtar
    ) public {
        require(bytes(usernames[msg.sender]).length==0,"User already exist ");
        users[msg.sender] = User({
            wallet: msg.sender,
            name: _name,
            username: _username,
            bio: _bio,
            avtar: _avtar
        });
        usernames[msg.sender]=_usrname;
    }
}
