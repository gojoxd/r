monthly_salary=function(no_of_hours,extra_hours){
if(extra_hours>=0 && extra_hours<=5){
monthly_salary=((no_of_hours*250)+(extra_hours*250))
}
else if(extra_hours>=5 && extra_hours<=10){
monthly_salary=((no_of_hours*250)+(extra_hours*1.5*250))
}
else{
monthly_salary=((no_of_hours*250)+(extra_hours*2*250))
}
return(monthly_salary)
}
monthly_salary(230,20)
in_hand_salary=function(monthly_salary,leaves){
in_hand_salary=(monthly_salary-(leaves*250)-(0.05*monthly_salary))
return(in_hand_salary)
}
in_hand_salary(50000,3)


numbers=c(1:500)
num_holder=c()
n=1
for(num in numbers){
if(num%%7==0 && num%%5!=0){
num_holder[n]=num
n=n+1}
}
print(num_holder)


vowel=c("a","e","i","o","u","A","E","I","O","U")
while(TRUE){
alphabet=readline("Enter any alphabet:")
if(alphabet%in%vowel){
break
}
else{
print("The entered alphabet is not a vowel! Please try again")
}
}


while(TRUE) {
random <- sample(1:5, 1)
guess <- as.numeric(readline("Guess the number: "))
if (guess != random) {
print("Your guess is not correct")
print(paste("The number was:", random, "Your guess was:", guess))
play_again <- readline("Would you like to try again? (Yes/No): ")
if (tolower(play_again) != "yes") {
print("You quit the game")
break
}
} else {
print("Congratulations! Your guess is correct")
print(paste("The number was:", random, "Your guess was:", guess))
break
}
}


products <- data.frame(
  Product = c("Juice", "Sugar", "Toothpaste", "Oven", "Mixer", "Ketchup", "Pickle", "Doormat", "Curtains", "Bottles", "Salt", "Spices", "Chocolates", "Biscuits", "School bag", "Umbrella", "Toaster", "Jam", "Dryfruits", "Perfume"),
  Price = c(50, 40, 80, 1200, 1200, 150, 95, 200, 500, 110, 25, 150, 250, 130, 600, 300, 1300, 60, 500, 700)
)
View(products)
Products_purchased <- c("Juice", "Sugar", "Sugar", "Mixer", "Biscuits", "Biscuits", "Biscuits", "Biscuits", "Chocolates", "Chocolates", "Chocolates", "Umbrella", "Toaster", "School bag", "School bag", "Umbrella", "Spices", "Dryfruits", "Sugar", "Salt", "Chocolates", "Bottles", "Ketchup", "Ketchup", "Trimmer", "Detergent", "Detergent")
purchased_quantity <- as.data.frame(table(Products_purchased))
purchased_quantity <- merge(purchased_quantity, products, by.x = "Products_purchased", by.y = "Product", all.x = TRUE)
purchased_quantity
purchased_quantity$tot_price <- purchased_quantity$Freq * purchased_quantity$Price
tot_bill <- sum(purchased_quantity$tot_price, na.rm = TRUE)
tot_bill
purchased_quantity[is.na(purchased_quantity$Products_purchased), "Products_purchased"] <- "-"
purchased_quantity$Products_purchased <- as.character(purchased_quantity$Products_purchased)
purchased_quantity <- rbind(purchased_quantity, c("Total Bill", "-", "-", tot_bill))
names(purchased_quantity) <- c("Items", "Quantity", "Price", "Total Price")
View(purchased_quantity)
