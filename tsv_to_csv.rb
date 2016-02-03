require 'rubygems'
require 'csv'
darray = []
Dir.foreach('data') do |tsvfile|
	next if tsvfile == '.' or tsvfile == '..'
		file = File.open('data/'+ tsvfile, "r")
		darray += CSV.parse(file.readline,col_sep:"\t")
	end
	CSV.open("output_data/Data_1.csv","w") do |csvobject|
		darray.each do |row_arr|
			csvobject << row_arr
		end
	end




File.open("data/userid-timestamp-artid-artname-traid-traname_1.tsv") do |fi|
	darray = []
	
	begin
		
			fi.each{ darray += CSV.parse(fi.readline,col_sep:"\t")}
		end
		
	rescue EOFError
	end

	CSV.open("output_data/Data_1.csv","w") do |csvobject|
		darray.each do |row_arr|
			csvobject << row_arr
		end
	end
end