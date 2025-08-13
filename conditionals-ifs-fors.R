# practice the Basic if statements 

burrito <- 1.5 # assigning an object value
# print(burrito)
# write a short if statement
if (burrito > 2) {
  print("I Love Burritos!")
}

# Example with strings:
my_ships <- c("Millenium Falcon", "X-wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r")
#str_detect(my_ships, pattern = "r") # Asks: which elements in the vector contain "r"

# use in an if statement
phrase <- "I Love burritos"

if (stringr::str_detect(phrase, "love")) {
  print("Big burrito fan!")
}

# Basic if-elses statement

pika <- 89.1 # storing a value to an object

if (pika > 60) { # define size of mega pika
  print("mega pika")
} else  # otherwise, print normal
  print("normal pika")

# Another example with strings

food <- " I love tacos"

if (stringr::str_detect(food, pattern = "burritos")) { # patter = ""is just being specific can also add string = food
  print("yay burritos!")
} else 
  print("what about burrtios?")

# More optuons with if-else if-else statements
marmot <- 2.8

if (marmot < 0.5) {
  print("Small")
} else if (marmot >= 0.5 & marmot < 3) # defininf medium marmots
  print("medium")
   else
    print("large")
 # Use the swith function to write complicated if else statements
Species <- "mouse"

# all of this code is the same as several if else statements 
switch(Species,
       "cat" = print("meow"), # same as writing an if statements
       "dog" = print("woof"), # same as an else if statement
       "mouse" = print("squeak")
       )

# see next week dplyr::case_when()