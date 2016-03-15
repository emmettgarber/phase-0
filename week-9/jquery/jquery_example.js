// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 2:
 //Add code here to select elements of the DOM
 bodyElement = $('body')
 $(document).ready(function() {
   $('h1').mouseenter(function() {
     $('h1').fadeTo('slow', 0);
   });
   $('h1').mouseleave(function() {
     $('h1').fadeTo('slow', 1);
   });
 });

 $(document).ready(function() {
   $('h2').click(function() {
     $('img').toggle(200);
   });
 });
// RELEASE 3:

 $(document).ready(function() {
   $("#hello").css("color", "#35B2DB");
   $("#hello").css("border-style", "dashed");
   $("#hello").css("border-color", "black");
   $("#hello").css("visibility", "hidden")
 }
 )
 
 $(document).ready(function() {
   $("#line1").html("Rockdoves");
 })
//RELEASE 4: Event Listener
  // Add the code for the event listener here
//RELEASE 5: Event Listener
 // Add the code for the event listener here

 $('img').on('mouseover', function(e) {
   e.preventDefault()
   $(this).attr('src', 'rock_dove_4064np.jpg')
 })

 $('img').on('mouseleave', function(e) {
   e.preventDefault()
   $(this).attr('src', 'dbc_logo.png')
 })

//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// What is jQuery?
// Its a language that allows one to modify elements of HTML and CSS while using JS

// What does jQuery do for you?
// Allows you to add a lot of styling, animation, and formating in one place.

// What did you learn about the DOM while working on this challenge?
// There are a lot of tools out there to use and Jquery is one tool that can be used for this.  It provides
// a lot of options to edit and spruce up a site.