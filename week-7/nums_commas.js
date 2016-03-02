// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .Jason

// Pseudocode
  // Input: Integer
  // Output: String of comma separated numbers from the input Integer
  // Steps: 1. Define a variable inputNum
// Step: 2. split each indexed number into array of numbers
// Step: 3. while inputNum length is > 3
// Step: 4. pop the last 3 and add a comma
// step: 5. else pop the last 3 digits 
// Step: 6. ouput


// Initial Solution
var inputNum = 1569743;
var outputNum = [];
var x = "";
var step = "";
inputNum = inputNum.toString().split("");

while (inputNum.length > 3) {
  for (step = 0; step < 3; step++) {
  var x = inputNum.pop();
  outputNum.push(x);}
  outputNum.push(",");}

while (inputNum.length < 3 && inputNum.length > 0){
  var x = inputNum.pop();
  outputNum.push(x)};

  console.log(outputNum.reverse().join(""));








// Refactored Solution

var inputNum = 11569743;
var outputNum = [];
var x = "";
inputNum = inputNum.toString().split("");

while (inputNum.length > 3) {
  for (var step = 0; step < 3; step++) {
  x = inputNum.pop();
  outputNum.push(x);}
  outputNum.push(",");}

  outputNum.push(inputNum.join(""));

console.log(outputNum.reverse().join(""));
// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// While the same overall strategy was used to solve the problem, things occured in a slightly different order.  Certain strategies had be changed to match the uniqueness of JS.

// What did you learn about iterating over arrays in JavaScript?
// Definitely have to be careful about how you enter your functions, as we got some funny outputs a few times

// What was different about solving this problem in JavaScript?
// Some commands do not work as expected such as the join command has commas as natural seperators

// What built-in methods did you find to incorporate in your refactored solution?
// push, join, reverse, toString