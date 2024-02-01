#!/usr/bin/env ruby

# Function to match a string that starts with 'h', ends with 'n', and has any single character in between
def beginning_and_end(input)
  # Regular expression to match the specified pattern
  regex = /^h.n$/

  # Output the result or an empty line if no match
  puts input.match?(regex) ? input.chomp : ''
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'string'"
else
  # Match the specified pattern in the provided argument
  beginning_and_end(ARGV[0])
end
