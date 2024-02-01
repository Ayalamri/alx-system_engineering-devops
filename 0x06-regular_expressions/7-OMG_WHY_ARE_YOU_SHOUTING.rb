#!/usr/bin/env ruby

# Function to match capital letters using a regular expression
def shouting(input)
  # Regular expression to match capital letters
  regex = /[A-Z]/

  # Extract and concatenate capital letters from the input string
  result = input.scan(regex).join

  # Output the result or an empty line if no match
  puts result.empty? ? '' : result
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'input_string'"
else
  # Match capital letters in the provided argument
  shouting(ARGV[0])
end
