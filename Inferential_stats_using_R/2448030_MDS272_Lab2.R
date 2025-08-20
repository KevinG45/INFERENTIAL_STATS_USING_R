##QUESTION1 Store the following data sets into a variable any way you can:
##a)1, 2, 3, 5, 8, 13, 21, 34 (the Fibonacci series)
FIBONACCI=c(1,2,3,8,13,21,34);FIBONACCI
##b)1, 2, 3, 4, 5, 6, 7, 8, 9, 10 (positive integers)
number=c(1:10);number
##c)1/1, 1/2, 1/3, 1/4, 1/5, 1/6, 1/7, 1/8, 1/9, 1/10 (reciprocals)
reciprocal=(1:10);reciprocal
##d)1964, 1965, ..., 2003 (some years)
years=1964:2003;years
##e)0, 25, 50, 75, 100, ..., 975, 1000 (0 to 1000 by 25s)
n=seq(0,1000,by=25);n

##QUESTION2:
##a)Create a numeric vector containing the numbers 10 to 200.
numeric_vector=c(10:200);numeric_vector

##b)Create a character vector with your name and four of your friends.
name_vector=c("melvin","renuka","vaibhav","jathin");name_vector

##c)Create a logical vector with alternating TRUE and FALSE values for a length of 10.
logical_vector=rep(c(TRUE,FALSE),times=5);logical_vector

##QUESTION3
##a)Create a 3x3 matrix with the numbers 1 to 9 and assign it to ‘M’.
Mat=matrix(1:9,nrow=3,ncol=3);Mat
##b)Access the element at the 2nd row and 3rd column
M=Mat[2:3];M
#c)Create a 3x3 matrix with the numbers 6, 6, 8, 2, 19, 1, 0, 11, 12 and assign it to ‘P’.
P = matrix(c(6, 6, 8, 2, 19, 1, 0, 11, 12), nrow = 3, ncol = 3);P
#d) Find A+B, A-B, A x B determinant of A and B, Transpose of A and B, inverse of A and B,trace of A and B.
A = matrix(3:11, nrow=3, ncol = 3);A
B = matrix(5:13, nrow = 3, ncol = 3);B

#A+B
mat_add = A+B;mat_add

#A-B
mat_sub = A-B;mat_sub

#A*B
mat_mult = A%*%B;mat_mult

#determinant
det_A = det(A);det_A
det_B = det(B);det_B

#transpose
trans_A = t(A);trans_A
trans_B = t(B);trans_B

#inverse
#inv_A = solve(A);inv_A
#inv_B = solve(B);inv_B

#trace
trace_A = sum(diag(A));trace_A
trace_B = sum(diag(B));trace_B

##QUESTION4
#a) Create a list with the following components: a character string MDS and a numeric value as your current trimester, and a logical value TRUE.
li = list(course = "MDS", trimester = 2, flag = TRUE);li
#b) Access your trimester from the list.
my_trimester = li$trimester;my_trimester

##QUESTION5
#a) Create a data frame with the 10 entries having SNo., name, registration number, date of birth,age, hometown.
students = data.frame(
  SNo = 1:10,
  name = c("Kevin", "Elvis", "Aryan", "Shradha", "Sona", "Emiya", "Joan", "Aanchal", "Akshay", "Mohit"),
  reg_no = c("REG1", "REG2", "REG3", "REG4", "REG5", "REG6", "REG7", "REG8", "REG9", "REG10"),
  dob = as.Date(c("2000-01-15", "1999-05-23", "2001-11-05", "1998-02-10", "2000-06-08", 
                  "1997-12-19", "2001-03-30", "1999-08-14", "2002-07-22", "1998-10-01")),
  age = c(24, 25, 23, 26, 24, 27, 23, 25, 22, 26),
  hometown = c("Mumbai", "Kolkata", "Wasseypur", "Gurgaon", "Delhi", "Bengaluru", "Chennai", "Hyderabad", "Cochin", "Goa")
);students
#b) Access the age column.
age_column = students$age;age_column

#c) Find the maximum, minimum and average age from the dataframe.
max_age = max(age_column);max_age
min_age = min(age_column);min_age
avg_age = mean(age_column);avg_age
#QUESTION 6
#The data on income and expenditure for 9 months is given:
#Income: 30000 55000 45045 32450 85000 74000 65435 64300 89000
#Expenditure: 20000 35000 10000 15000 13000 30000 35000 24000 35000
#a) Make a data frame using above data.
income = c(30000, 55000, 45045, 32450, 85000, 74000, 65435, 64300, 89000);income
expend = c(20000, 35000, 10000, 15000, 13000, 30000, 35000, 24000, 35000);expend
money = data.frame(income = income, expend = expend);money
#b) Compute the variance of income and expenditure.
var_income = var(money$income);var_income
var_expend = var(money$expend);var_expend

#c) Compute the correlation between income and expenditure.
corr = cor(money$income,money$expend);corr
#d) Obtain the cumulative expenditure.
cum_expend = cumsum(money$expend);cum_expend
#e)e) Later on you realized to name 1 to 9 months as Jan till September. Store these names in a vector and then add to data frame.
months = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep")
money$month = months;money

##QUESTION7
#a)
Marks = matrix(c(45, 44, 25, 23, 19, 49, 37, 45, 33), 
               nrow = 3, ncol = 3, byrow = FALSE,
               dimnames = list(c("Statistics", "Data Science", "Mathematics"), 
                               c("Name 1", "Name 2", "Name 3")));Marks
#b)
Name4_marks = c(39, 32, 45)
Marks = cbind(Marks, "Name 4" = Name4_marks)
Marks

#c)
Marks_squared = Marks^2;Marks_squared

#d)
percentage_matrix = (Marks / 50) * 100;percentage_matrix
