/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.

// var gradebook = {}

// gradebook["Joseph"] = {testScores: scores[0]};
// gradebook["Susan"] = {testScores: scores[1]};
// gradebook["William"] = {testScores: scores[2]};
// gradebook["Elizabeth"] = {testScores: scores[3]};

// gradebook["addScore"] = function addScore (name, score) {
//   gradebook[name].testScores.push(score);
// }

// gradebook["getAverage"] = function getAverage (name) {
//   var scores = gradebook[name]["testScores"];
//   return scores.reduce(function(a,b){return a + b}) / scores.length
  
// }
// function average(testArray) {
//   var sum = 0;
//   for (var i = 0; i < testArray.length; i++) {
//     sum += testArray[i];
//   }
//   return sum/testArray.length;
// };

// getAverage: function(name) {
//   var scores = gradebook[name]["testScores"];
//   return scores.reduce(function(a,b){return a + b}) / scores.length
//   }
// };

// gradebook.addScore("Susan", 80);






// __________________________________________
// Refactored Solution

var gradebook = {}

function populate() {
  for(var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores:scores[i]};
  }
}
populate();
  

gradebook["addScore"] = function addScore (name, score) {
  gradebook[name].testScores.push(score);
}

gradebook["getAverage"] = function getAverage (name) {
  var scores = gradebook[name]["testScores"];
  return scores.reduce(function(a,b){return a + b}) / scores.length
}

function average (testArray) {
  var sum = 0;
  for (var i = 0; i < testArray.length; i++) {
    sum += testArray[i];
  }
  return sum/testArray.length;
  
};




// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// Its a pretty simple process, and runs very intuitively.  Its sort of like a class method in Ruby

// How did you iterate over nested arrays in JavaScript?
// Using a for loop and then referencing the individual items using brackets.  Did try to call our average function in our
// getaverage function but we were getting an error.  I think its down to some idiosynchrosy with JS but I'm not sure.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// In this challenge I did not incorporate anything new but it was good reinforcement for For loops.  







// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)