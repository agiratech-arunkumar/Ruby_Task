require "prawn"
require 'open-uri'

class Pdf_info
  def pdfinfo(name,age,job,mob_num,path)
      Prawn::Document.generate("/home/agiratech/Desktop/hello.pdf") do
      text "Employee Details", align: :center, color: "333333", size: 42
      move_down 20
      text "Name : " + name, align: :center, color: "555555", size: 26
      text "Age : " + age, align: :center, color: "555555", size: 26
      text "Job : " + job, align: :center, color: "555555", size: 26
      text "Mobile Number : " + mob_num, align: :center, color: "555555", size: 26
      url = path
      image open(url), fit: [200, 200], position: :center
      end
    end
  end

pdfinf = Pdf_info.new
print "Enter the Name : "
name = gets.chomp
print "Enter the Age : "
age = gets.chomp
print "Enter the Job : "
job = gets.chomp
print "Enter the Mobile_number : "
mob_num = gets.chomp
print "Enter the Path : "
path = gets.chomp
pdfinf.pdfinfo(name,age,job,mob_num,path)
