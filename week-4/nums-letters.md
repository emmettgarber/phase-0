What does puts do?
Returns what you write in your ruby onto the screen

What is an integer? What is a float?
An integer is a whole number, a number without decimals ie 7, 15, 21.  A float is a number with decimals, ie 3.45 or 5.7.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
In float division you would get the exact remainder when doing division, ie 7/2=3.5.  Integer division is when you round down to the nearest integer you
get when you divide the dividend by the divisor, ie 11/3= 3.  To demonstrate, lets say you were given 17 marbles and you have 4 neices, you want to 
give each of your neices an equal amount of marbles as a gift, you divide 17 by 4 and get a value of 4.25.  Obviously you cant break a marble into 4 
equal pieces so you give each of your neices 4 marbles.

...ruby
puts 365*24
puts ((365*10)+2)*(24*60)
#This assumes just 2 leap years
...