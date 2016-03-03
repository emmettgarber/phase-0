// JavaScript Olympics

// I paired with Ryan Dempsey on this challenge.

// This challenge took me [2] hours.


// Warm Up

// Bulk Up
var tim = {name: "Tim Smith", event: "500 meter"}
var sarah = {name: "Sarah Willis", event: "200 Hurdles"}
var testArray = [tim, sarah]

function addFunction(athlete) {
  for (var i = 0; i < athlete.length; i++) {
    athlete[i].win = athlete[i].name + " won the " + athlete[i].event + "!";
    console.log(athlete[i].win)
  }  
}

addFunction(testArray)

// Jumble your words
function reverseWord(word) {
  console.log(word.split("").reverse().join(""))
}

reverseWord("hello")


// 2,4,6,8
var testArray2 = [6, 7, 8, 3, 10, 13, 14, 23, 56, 72]
function evens(numbers) {
for (var i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 == 0);
  else
    numbers.splice(i, 1)};
  console.log(numbers)}

evens(testArray2)

// "We built this city"
function Athlete() {
  this.name = "Michael Phelps";
  this.age = 29;
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Iterating over arrays, some of the logic behind different JS functions

// What are constructor functions?
// Constructor functions are like classes in ruby.  They allow you to run multiple objects throught the same code

// How are constructors different from Ruby classes (in your research)?
// I have not delved into this much, but there is a different hierchy system, and using the this instead of the Class definition.