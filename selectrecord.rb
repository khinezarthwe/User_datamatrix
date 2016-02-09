require 'rubygems'
require 'csv'
userdata = []
Dir.foreach('Userdata/data') do |user_name|
  next if user_name == '.' or user_name == '..'
  data = CSV.readlines('Userdata/data/' + user_name, col_sep: "\t")
  data.each do|record|
    if record[0] == 'user_000813'
      userdata << record
    end
  end
end
CSV.open("output_data/813.csv","w") do |csvobject|
  userdata.each do |row_arr|
    csvobject << row_arr
  end
end
