require 'rubygems'
require 'csv'
data = CSV.read('output_data/Userprofile.tsv', headers:true,col_sep: "\t")
result_data = {}
data.each do |check_data|
	next if check_data[3].nil?
	result_data[check_data[0]] = check_data[3]	
end
puts result_data.values.uniq.sort.count

 	





=begin
result_data = {}
data.each do |check_data|

	if check_data[3] == "United States"	
		result_data[check_data[0]] = check_data[3]
end
end
puts result_data
=end