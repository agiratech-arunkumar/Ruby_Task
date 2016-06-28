require 'matrix'

class Mat
 def read_matrix
   puts "Enter number of column for matrix : "
   _cols = gets.chomp!.to_i

   puts "Enter number of rows for matrix : "
   _rows = gets.chomp!.to_i

   puts "Enter the elements of the matrix (one per line)"
   a = Matrix.build _rows, _cols do |m|
     m = gets.chomp!.to_i
   end
 end
end

 matrix = Mat.new
 print "Press 1 for addition && 2 for multiplication : "
 num = gets.to_i
 if num == 1
 puts "reading first matrix..."
 mat1 = matrix.read_matrix
 puts "reading second matrix..."
 mat2 = matrix.read_matrix
 puts mat1 + mat2
elsif num == 2
 puts "reading first matrix..."
 mat1 = matrix.read_matrix
 puts "reading second matrix..."
 mat2 = matrix.read_matrix
 puts mat1 * mat2
end
