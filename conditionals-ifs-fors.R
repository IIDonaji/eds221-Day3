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

# For Look with conditional statemtns
# create a vector of aniamls 
animal <- c("cat", "dog", "dog", "zebra", "dog")
one_animal <- animal[i]

for (i in seq_along(animal)) {
  if (animal[i] == "dog")
    print(" I love dogs!")
    else 
    print("These are other animals")
}

# Another for loop example with conditional statements

# animal species
species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")

# and their respective ages in human years
age_human <- c(3, 8, 4, 6, 12, 18)

# convert ages to "animal years" using the following:
# 1 human year = 7 in dog years
# 1 human year = 0.88 in elephant years
# 1 human year = 4.7 in goat years


#i <- 1 # for testing
#if (species[i] == "dog") {
# animal_age <- age_human[i] * 7
#} 
#else if (species[i] == "elephant") {
#  animal_age <- age_human[i] * 0.88
#}
# else if (species[i] == "goat") {
#  animal_age <- age_human[i] * 4.7
#}

# allocate space for our out put

animal_ages <- vector(mode = "numeric", length = length(species))

for (i in seq_along(species)) {
  if (species[i] == "dog") 
    animal_age <- age_human[i] * 7
    else if (species[i] == "elephant") 
    animal_age <- age_human[i] * 0.88
    else if (species[i] == "goat") 
    animal_age <- age_human[i] * 4.7

  #print(animal_age)
  animal_ages[i] <- animal_ages # populate empty vector
}

# another example of storing an output

tigers <- c(29, 34, 82)
lions <- c(2, 18, 6)

big_cats <- vector(mode = "numeric", length = length(tigers))

for (i in seq_along(tigers)) {
  big_cats[i] <- tigers[i] + lions[i]
}

# For loops to iterate across columns of data frames
mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) {
mean_val <- mean(mtcars[[1]], na.rm = TRUE) #na.rm = True removes unknown values  
mean_mtcars[i] <- mean_val
}

# A for loop over columns with a condition
library(palmerpenguins)
for (i in seq_along(penguins)) { # or i in 1:ncol(penguins)
  if (is.numeric(penguins[[i]]))
  penguin_median <- median(penguins[[i]], na.rm = TRUE)
  else
   print(penguin_median)
}

# apply() function iterates over columns or rows

# rewrite our for loop for finding mean values of the column in mtcars
apply(X = mtcars, MARGIN = 2, FUN = mean)

# same as saying apply the function mean across the columns in mtcars
library(tidyverse)

penguin_summary <- penguins %>% # ctrl shift m = short cut for %>% 
  group_by(species) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))
# the across is the for loop with the condition in it
























