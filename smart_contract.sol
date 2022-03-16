//SPDX-License-Identifier: --> contracts/1_Storage.sol
pragma solidity >=0.7.0 <0.9.0;
//CRUD - Create , Read, Update , Delete


//CRUD - Create , Read, Update , Delete


contract CRUD{


    uint idx = 0;

    struct User{
        uint id;
        string name;
        string email;
        uint age;
    }

    User[] user;
    //Create
    function create(string memory newName,string memory newEmail,uint newAge) public{
        user.push(User(idx,newName,newEmail,newAge));
        idx += 1;
    }

    //Read
    function readStructure(uint idx) public view returns(uint,string memory,string memory,uint){
        for (uint i = 0; i < user.length; i++){
            if (user[i].id == idx){
                return(user[idx].id , user[idx].name , user[idx].email , user[idx].age);
            }
        }
    }

    //Update
    function update(uint idx , string memory newName, string memory newEmail, uint newAge) public{
        for (uint i = 0; i < user.length; i++){
            if (user[i].id == idx){
                user[idx].name = newName;
                user[idx].email = newEmail;
                user[idx].age = newAge;
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
