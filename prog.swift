let number_of_days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let names_of_months  = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "November", "October", "December"]
let size = 12

for value in number_of_days_in_month{
    print(value)
}

print()

var index = 0
while index < size{
print("In \(names_of_months[index]) \(number_of_days_in_month[index]) days")
    index = index + 1;
}

print()

var tuples : Array<(String, Int)> = []
index = 0
while index < size{
    tuples.append((names_of_months[index], number_of_days_in_month[index]))
    index = index + 1
}

for (month, days) in tuples{
    print("In \(month) \(days) days")
}

print()

index = size - 1;

while index >= 0{
    print("In \(tuples[index].0) \(tuples[index].1) days")
    index = index - 1
}

print()

let month = "February"
let day = 14
var count = day - 1

index = 0
repeat {

    count = count + tuples[index].1
    index = index + 1
    
} while tuples[index].0 != month
print("From the beginning of the year to the \(day) \(month) \(count) days")


