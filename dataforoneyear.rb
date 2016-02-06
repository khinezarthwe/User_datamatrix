# thown loz ma ya thay

require 'rubygems'
require 'csv'
require 'date'

data = CSV.readlines('data/userid-timestamp-artid-artname-traid-traname_1.tsv', col_sep: "\t")
result_arr = []
data.each do|record|
	testdate = DateTime.parse "2008-12-31T24:00:00Z"
	checkdate = DateTime.parse record[1]
	if checkdate > testdate
		result_arr += record 
	end 

end
result_arr = CSV.parse(result_arr)
CSV.open("output_data/2009.csv","w") do |csvobject|	
			csvobject << result_arr
end