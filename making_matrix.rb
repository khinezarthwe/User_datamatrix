require 'rubygems'
require 'csv'
data = CSV.read('Userdata/011.tsv', col_sep: "\t")
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
