// psuedocode:
// Establish a board, and an array of the letters
// Generate a random letter from the array, and a random number from 1 to 100
// Check to see if the numbers match the the arrays and print the board

var board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
        
var letters =["B", "I", "N", "G", "O"]

function bingo() {
  var callLetter = Math.floor(Math.random()*5)
  var callNumber = Math.floor((Math.random()*99)+ 1)
  console.log("The bingo call is " + letters[callLetter] + callNumber)
  for (var i = 0; i < board.length; i++) {
    if(board[i][callLetter] == callNumber) {
      board[i][callLetter] = "X"
    }
  }
  console.log("       Your Board:")
  console.log("     B   I   N  G   O")
  console.log(board)
}


// What concepts did you solidify in working on this challenge? 
// It was good working with arrays and objects and reviewing the Math functions.

// What was the most difficult part of this challenge?
//  Probably getting the math functions to behave the way I wanted them to

// Did you solve the problem in a new way this time?
// In a similar fashion but a lot of things were different becuase of the way that JS works.  Thought I made things a little cleaner this time though.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// I broke the problem down into just one function this time, used random numbers more. But it was fairly similar

// Grocery List


// function groceryList(item, amount, action) {
//   var itemList = { lemon: 2, rosemary: 3, chicken: 1};
//   if( action == "add" || "update") {
//     itemList[item] = amount;
//   }
//   else if(action == "delete") {
//     delete itemList[item];
//   }
//   else{
//     console.log("No proper action selected, please use add, update, or delete. See the current list below.");
//   }
//   console.log("Here is the present list:");
//   for(var key in itemList) {
//     console.log("I need " + itemList[key] + " " + key);
//   }
// }
// var lemonChix = new groceryList("bread", 1, "add")

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Good review of for loops, if else, some of the math functions and the way objects work in JS.

// What was the most difficult part of this challenge?
// Tried to get it into a constructor function but I couldnt get it to go. I need to review this more.

// Did an array or object make more sense to use and why?
// An object made more sense because you could store a name of an item and its quantity

