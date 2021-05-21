##
# This program adds numbers to an array using OOP.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-17
# frozen_string_literal: true

load "Marlon_Stack.rb"

begin
    # variables
    counter = 0

    # new instance
    my_stack = MarlonStack.new

    # loop for user input
    while counter < 3 do
        print"Please enter a number to add to the list: "
        # Gets the user input as an int
        userInput = Integer(gets) rescue True

        # call method
        my_stack.push_num(userInput)

        counter += 1
    end
    puts

    # call method
    top = my_stack.pop_method

    print "The top element in the list is: #{top}"
    puts
    puts
    puts "The rest of the list contains: "

    # call method
    my_stack.show_stack

rescue StandardError
    # error catch
    puts
    puts "Sorry that's not a number, try again."
end

puts
puts "Done."
