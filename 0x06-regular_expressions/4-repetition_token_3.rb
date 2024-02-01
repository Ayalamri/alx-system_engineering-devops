#!/usr/bin/env ruby

# Function to match a string that starts with 'h' and is followed by exactly four 't' characters, ending with 'n'
def repetition_token_3(input)
  # Regular expression to match the specified pattern
  regex = /^h(t{4})n$/

  # Output the result or an empty line if no match
  puts input.match?(regex) ? input.chomp : ''
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'string'"
else
  # Match the specified pattern in the provided argument
  repetition_token_3(ARGV[0])
end
