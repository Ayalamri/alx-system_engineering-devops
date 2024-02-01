#!/usr/bin/env ruby

# Function to match repetition of the letter 't' using a regular expression
def repetition_token_0(input)
  # Regular expression to match one or more occurrences of the letter 't'
  regex = /t+/

  # Check if the input string contains a match
  if regex.match?(input)
    puts input
  else
    puts "No match"
  end
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'input_string'"
else
  # Match repetition of the letter 't' in the provided argument
  repetition_token_0(ARGV[0])
end
