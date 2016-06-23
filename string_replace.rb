class String
  def file(content)
    file = File.new("file.txt", "w")
    file.puts(content).to_s
    file.close
  end
  def read_file(str,str_replace)
   data = File.open("file.txt","r")
   line = data.readline
    if line[str]
      content_data = line.gsub(str, str_replace)
      File.open("file.txt", "w") {|file| file.puts content_data }
      puts content_data
    end
end
end

string_obj = String.new
print "Enter content in the file : "
content = gets.chomp
string_obj.file(content)
print "Enter the string to be replaced : "
str = gets.chomp
print "Enter the string to be replaced with: "
str_replace = gets.chomp
string_obj.read_file(str,str_replace)
