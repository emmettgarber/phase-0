
var mouse = {
  agility: 7,
  stealth: 7,
  intelligence: 7,
}

var fatty = {
  agility: 2,
  stealth: 14,
  intelligence: 12
}

var agile = {
  agility: 14,
  stealth: 12,
  intelligence: 2
}

var smarty = {
  agility: 12,
  stealth: 2,
  intelligence: 14
}

function intro() {
    console.log("You are Scooter the hungry mouse.  Your mission, if you choose to accept it, is to get to the delicious cheese in pantry.");
    console.log("Your task is no easy one however: Gilda the fat cat is in the bedroom, Tornado the fast cat is in the living,");
    console.log("and Albert the cunning cat is in the kitchen. You must get by all three using either your agility, stealth or intelligence to get the cheese!");
    console.log("Start your quest for delicious cheese by typing in Gilda(\"trait you want to use\") below where the Start Game line.")
    console.log("")
}

function Gilda(trait) {
  if (Math.ceil(mouse[trait] + Math.random(8)) >= Math.ceil(fatty[trait] + Math.random(5))) {
    console.log("Scooter used his " + trait + " to get by Gilda.  Now its time to get by Tornado. Enter Tornado(\"trait you want to use\") to move on!");
    }
  else {
    console.log("Oh noooo!!! Gilda got Scooter. Gilda is like a smart, stealthy walrus try using agility to get by her next time.")
  }
  console.log("")
}

function Tornado(trait) {
  if (Math.ceil(mouse[trait] + Math.random(8)) >= Math.ceil(agile[trait] + Math.random(5))) {
    console.log("Scooter used his " + trait + " to get by Tornado.  Now its time to get by Albert. Enter Albert(trait you want to use) to move on!");
    }
  else {
    console.log("Oh noooo!!! Tornado got Scooter. Tornado is like a fast, stealthy commando try using intelligence to get by him next time.")
  }
  console.log("")
}

function Albert(trait) {
  if (Math.ceil(mouse[trait] + Math.random(8)) >= Math.ceil(smarty[trait] + Math.random(5))) {
    console.log("Scooter used his " + trait + " to get by Albert.  You out-ran, out-smarted, and out-stealthed your opponents. Time to enjoy some sweet, sweet cheese!!");
    }
  else {
    console.log("Oh noooo!!! Albert got Scooter. Albert is like a fast, smart bird of pray try using stealth to get by him next time.")
  }

}
intro()
// Start Game





// Reflection
// What was the most difficult part of this challenge?
// I think just coming up with a concept of how to interact with the user
// What did you learn about creating objects and functions that interact with one another?
// There are lots of things you can do with objects, whether it is creating or calling on them.  You definitely need to be careful with your flow control and how you access the values if they are being manipulated
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I learned about ceil and went back over random in this challenge.
// How can you access and manipulate properties of objects?
// You can use object. or object[] to access and manipulate properties. I used the bracket method in this challenge
