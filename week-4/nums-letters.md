[simple string](https://github.com/emmettgarber/phase-0/blob/master/week-4/simple-string.rb)
[basic math](https://github.com/emmettgarber/phase-0/blob/master/week-4/basic-math.rb)
[defining variables](https://github.com/emmettgarber/phase-0/blob/master/week-4/defining-variables.rb)


What does puts do?
Returns what you write in your ruby onto the screen

What is an integer? What is a float?
An integer is a whole number, a number without decimals ie 7, 15, 21.  A float is a number with decimals, ie 3.45 or 5.7.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
In float division you would get the exact remainder when doing division, ie 7/2=3.5.  Integer division is when you round down to the nearest integer you
get when you divide the dividend by the divisor, ie 11/3= 3.  To demonstrate, lets say you were given 17 marbles and you have 4 neices, you want to 
give each of your neices an equal amount of marbles as a gift, you divide 17 by 4 and get a value of 4.25.  Obviously you cant break a marble into 4 
equal pieces so you give each of your neices 4 marbles.

```ruby
puts 365*24
```

```ruby
puts ((365*10)+2)*(24*60)
#This assumes just 2 leap years
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby uses +, -, *, and /.  All of these can be performed on number values, and strings can you + and to an extant multiplication

What is the difference between integers and floats?
Integers are whole numbers with no decimal point, floats have a decimal point.  You can make whole numbers floats by adding .0 ie 7.0 would be a float
not an integer.

What is the difference between integer and float division?
When dividing integers you will get the last whole number that the dividend can be divided by the divisor ie 7/3=2.  When diving floats you will get
the remainder as you would in standard arithmetic, ie 7/3=2.33.

What are strings? Why and when would you use them?
Strings are sets of values (they can be letters or numbers) that are not meant to be manipulated by arithmetic.  They can be manipulated in a variety
of ways.  They can be used to save information about something (ie user data), they can be used when we want to display information, ask a question etc.

What are local variables? Why and when would you use them?
Local variables are variables that you have to set a value for.  You use them when you need to add a value or string that you
you need to manipulate, and that variable is not universally or globally defined already.

How was this challenge? Did you get a good review of some of the basics?
Yes it was a good way to brush up on some of the ruby syntax and structure.