require 'pg'

class Backup
  def backup_datbase(dbname,user,password)
      con = PG.connect(:dbname => "#{dbname}",
                       :user => "#{user}",
                       :password => "#{password}")
      username = con.user
      db_name = con.db
      pswd = con.pass
      system('export PGPASSWORD="#{pswd}"')
      system( "pg_dump -U #{username} #{db_name} -F t > mydbbkp.tar" )
  end
end

backup = Backup.new
print "Enter the dbname : "
dbname = gets.chomp
print "Enter the username : "
user = gets.chomp
print "Enter the password : "
password = gets.chomp
backup.backup_datbase(dbname,user,password)

