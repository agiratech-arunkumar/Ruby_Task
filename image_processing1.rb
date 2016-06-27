require 'rmagick'

class Image_color
  def reverse(str)
    img = Magick::Image.read(str).first
    img = img.negate
    img.write("reverse_flower_color.jpg")
  end
end

imagecolor = Image_color.new
str = "/home/agiratech/Desktop/a-rose-flower.jpg"
imagecolor.reverse(str)


