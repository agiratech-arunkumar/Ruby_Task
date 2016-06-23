class String
  def str_occ(str)
    file = File.open("file.txt", "r")
    line = file.readline
      if line["hello"]
      num = line.scan(str).length
      puts num
  end
end

string_obj = String.new
print "Enter the string to find the number of occurences  \n"
str = gets.chomp
string_obj.str_occ(str)
end