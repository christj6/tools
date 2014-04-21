require 'rubyXL'

workbook = RubyXL::Parser.parse("results.xlsx")

worksheet = workbook[0]

begin
   file = File.open("runners.html", "w")
  for i in 0..23
  	position = worksheet[i][0].value.to_s 
	name = worksheet[i][1].value + " " + worksheet[i][2].value.to_s 
	time = worksheet[i][3].value.to_s 

    file.write("<tr>\n\t<td>" + time + "</td>\n\t<td>" + name + "</td>\n\t<td>" + position + "</td>\n</tr>\n")
   end 
 rescue IOError => e
 #some error occur, directory not writable etc.
ensure
 	file.close unless file == nil
end
