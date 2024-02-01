#!/usr/bin/env ruby

# Function to match a 10-digit phone number using a regular expression
def find_phone_number(input)
  # Regular expression to match a 10-digit phone number
  regex = /^\d{10}$/

  # Output the result or an empty line if no match
  puts input.match?(regex) ? input.chomp : ''
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'phone_number'"
else
  # Match a 10-digit phone number in the provided argument
  find_phone_number(ARGV[0])
end
