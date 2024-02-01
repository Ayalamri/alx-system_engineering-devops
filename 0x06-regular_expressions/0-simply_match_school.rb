#!/usr/bin/env ruby

# Function to match the word "School" using a regular expression
def match_school(input)
  # Regular expression to match "School"
  regex = /School/

  # Check if the input string contains a match
  if regex.match?(input)
    puts "#{input}$"
  else
    puts "$"
  end
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'input_string'"
else
  # Match "School" in the provided argument
  match_school(ARGV[0])
end
