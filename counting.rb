#OK! 
require 'rubygems'
require 'csv'
Dir.foreach('Userdata') do |user_name|
next if user_name == '.' or user_name == '..'
		data = CSV.read('Userdata/' + user_name, col_sep: "\t")
		result_hash = {}
		data.each do|record| 
		next if record[4].nil?
			if result_hash[record[4]].nil?
				result_hash[record[4]] = 1
			else
			result_hash[record[4]] += 1
			end
		end
		CSV.open("countingdata/" + user_name + ".csv","w") do |csvobject|
		result_hash = result_hash.to_a.transpose
		result_hash.each do |row_arr|
			csvobject << row_arr
		end
	end


end








=begin
data = CSV.read('Userdata/001.tsv', col_sep: "\t")
result_hash = {}
data.each do|record| 
	next if record[4].nil?
	if result_hash[record[4]].nil?
	result_hash[record[4]] = 1
	else
		result_hash[record[4]] += 1
	end
end
#p result_hash
	CSV.open("Userrecord/011.csv","w") do |csvobject|
		result_hash.each do |row_arr|
			csvobject << row_arr
		end
	end
=end