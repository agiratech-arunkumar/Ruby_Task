require 'pg'
require 'open-uri'
require 'pdf-reader'

begin
    reader = PDF::Reader.new("/home/agiratech/Desktop/Emp_info.pdf")
    z = reader.pages.map(&:text)
    a = z[0]
    b = a.split("\n")
    con = PG.connect :dbname => 'aaron', :user => 'postgres',
        :password => 'root'
    con.exec "CREATE TABLE IF NOT EXISTS Employee_Details(Id SERIAL PRIMARY KEY,
        Name VARCHAR(20), Age INT, Job VARCHAR(40),Mobile_Number BIGINT )"
    con.exec ("INSERT INTO Employee_Details (name,age,job,mobile_number) Values('#{b[0]}',#{b[1]},'#{b[2]}',#{b[3]})")
rescue PG::Error => e
    puts e.message
ensure
    con.close if con
end