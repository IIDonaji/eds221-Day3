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
} else if (marmot >= 0.5 & marmot < 3) # defining medium marmots
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

# see next week dplyr::case_when()!
# Writing for loops

dog_names <- c("Teddy", "Khora", "Banjo", "Waffle")

print("My dog's name is Teddy")
# create example for one data element to put into for loop
# here is version with copy/pasting
print(paste("My dog's name is", dog_names[1]))
print(paste("My dog's name is", dog_names[2]))
print(paste("My dog's name is", dog_names[3]))
print(paste("My dog's name is", dog_names[4]))

# verstion with a variable that I can update
pupster <- dog_names[1] # dog_name[1] instead of 1
print(paste("My dog's name is", dog_names[pupster]))

# convert to a for loop

for (pupster in dog_names) {
  print(paste("My dog's name is", pupster))
}

# Another for loop example

# data that I'm working with
mass <- seq(from = 0, to = 3, by = 0.5)
# practicing writing the body of the for loop
i <- mass[1]
i
new_val <- i + 2 # adding 2 to each value
print(new_val)

for (i in mass) {
  new_val <- i + 2 # adding 2 to each value
  print(new_val)
  
}

# practice same example with indexing
i <-1
new_val <- mass[i] + 2
print(new_val)

# writing into a for loop
for (i in 1:length(mass)) { # defining iterator using the length of vector
  new_val <- mass[i] + 2
  print(new_val)
}
# same thing!
for (i in seq_along(mass)) { #defining iterator seq_along()
  new_val <- mass[i] + 2
  print(new_val)
}

# another example with iterating by position ( indexing)

tree_height <-c(1,2,6,10)

# example for the first case simple case 
tree_height[1] + tree_height[2] 

# convert into a generalization expression
i <- 1 # stored values for i 
val <- tree_height[i] + tree_height[i + 1] # find the pattern 
print(val)

# convert
# test out creating the sequence
seq_along(tree_height)

for (i in seq_along(tree_height)) {
  val <- tree_height[i] + tree_height[i + 1] 
  print(val)
}

# only need this code the above is the patht to get there
tree_height <- c(1,2,6,10)

for (i in seq_along(tree_height)) {
  val = tree_height[i] + tree_height[i + 1]
  print(val)
}