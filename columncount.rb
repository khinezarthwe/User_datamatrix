require 'rubygems'
require 'csv'
data = CSV.read('output_data/Userprofile.tsv', headers:true,col_sep: "\t")
result_data = {}
userUS = 0, usernewzea = 0, useraus = 0, userUK = 0, usersingapore = 0
userdata = []
data.each do |check_data|
  next if check_data[3].nil?
  result_data[check_data[0]] = check_data[3]
end
result_data.each do |check__data|
  if check__data[1] == 'United States'
    userUS = check__data[0]

  elsif check__data[1] == 'New Zealand'
    usernewzea = check__data[0]

  elsif check__data[1] == 'Australia'
    useraus = check__data[0]

  elsif check__data[1] == 'United Kingdom'
    userUK = check__data[0]
  elsif check__data[1] == 'Singapore'
    usersingapore = check__data[0]
    puts usersingapore
  end
end




=begin
result_data = {}
data.each do |check_data|

  if check_data[3] == "United States" 
    result_data[check_data[0]] = check_data[3]
end
end
puts result_data
=end
