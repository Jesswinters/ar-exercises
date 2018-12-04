require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Jessica", last_name: "Winters", hourly_rate: 65)
@store1.employees.create(first_name: "David", last_name: "Lacho", hourly_rate: 60)
@store1.employees.create(first_name: "Rachel", last_name: "Wong", hourly_rate: 65)
@store1.employees.create(first_name: "Daniel", last_name: "White", hourly_rate: 60)

@store2.employees.create(first_name: "Aaron", last_name: "Rosenberg", hourly_rate: 60)
@store2.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 60)
@store2.employees.create(first_name: "Kamylla", last_name: "Florencio de Almeida", hourly_rate: 60)
