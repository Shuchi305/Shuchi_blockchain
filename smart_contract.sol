//SPDX-License-Identifier: --> contracts/1_Storage.sol
pragma solidity >=0.7.0 <0.9.0;
//CRUD - Create , Read, Update , Delete
contract CRUD{

    uint idx = 0;

    struct User{
        uint id;
        string name;
        string email;
        string industry;
    }

    User[] user;
    //Create
    function create(string memory newName,string memory newEmail,string memory newIndustry) public{
        user.push(User(idx,newName,newEmail,newIndustry));
        idx += 1;
    }

    //Read
    function readStructure(uint idx) public view returns(uint,string memory,string memory,string memory){
        for (uint i = 0; i < user.length; i++){
            if (user[i].id == idx){
                return(user[idx].id , user[idx].name , user[idx].email , user[idx].industry);
            }
        }
    }

    //Update
    function update(uint idx , string memory newName, string memory newEmail, string memory newIndustry) public{
        for (uint i = 0; i < user.length; i++){
            if (user[i].id == idx){
                user[idx].name = newName;
                user[idx].email = newEmail;
                user[idx].industry = newIndustry;
            }
        }
    }

    //Delete
    function destroy(uint idx) public{
        for (uint i = 0; i < user.length; i++){
            if (user[i].id == idx){
                delete user[idx];
            }
        }
    }
}
