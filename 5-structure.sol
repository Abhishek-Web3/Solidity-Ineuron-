//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;

contract strcuture {
    // we can assign struct and enum outside the contract also
    struct Book {
        string title;
        string author;
        uint bookID;
        uint price;
    }
// define a struct - name of the strcut and varaible to represnt the struct
    Book book;
    function setBook() public {
        book = Book("Blockchain for begginners", "Abhishek", 95, 566);
    }

    function getBookId() public  view returns(uint) {
        return book.bookID;
    }

}