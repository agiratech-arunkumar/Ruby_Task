class Compare
  def file1(content)
    file = File.new("file.rb", "w")
    file.puts(content).to_s
    file.close
  end
  def file2(content)
    file = File.new("file1.rb", "w")
    file.puts(content).to_s
    file.close
  end
  def compare_files
    file = 'file.rb'
    File.readlines(file).each do |line|
    file = 'file1.rb'
    File.readlines(file).each do |line1|
    if (line == line1)
      puts "Content in both the files are same"
    else
      puts "Content in both the files are not same"
   end
  end
 end
end

compare_obj = Compare.new
print "Enter the content for file1"
content = gets.to_s
compare_obj.file1(content)
print "Enter the content for file2"
content = gets.to_s
compare_obj.file2(content)
compare_obj.compare_files
end