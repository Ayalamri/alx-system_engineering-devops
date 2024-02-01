#!/usr/bin/env ruby

# Function to extract sender, receiver, and flags from a log entry
def extract_info(log_entry)
  # Regular expression to match relevant information in the log entry
  regex = /\[from:(\S+)\] \[to:(\S+)\] \[flags:([^\]]+)\]/

  # Match the regex against the log entry
  match = regex.match(log_entry)

  # Check if the regex matched successfully
  if match
    sender = match[1]
    receiver = match[2]
    flags = match[3]

    # Output the extracted information in the required format
    puts "#{sender},#{receiver},#{flags}"
  else
    # Output an error message if the regex did not match
    puts "Error: Unable to extract information from the log entry."
  end
end

# Check if a log entry is provided as a command-line argument
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'log_entry'"
else
  # Extract information from the provided log entry
  extract_info(ARGV[0])
end
