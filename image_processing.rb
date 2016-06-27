require 'chunky_png'

class Image_color
  def reverse(str)
    img = ChunkyPNG::Image.from_file(str)
    height = img.dimension.height
    width  = img.dimension.width
    height.times do |i|
    width.times do |j|
    arr = [ChunkyPNG::Color.r(img[j,i]), ChunkyPNG::Color.g(img[j,i]), ChunkyPNG::Color.b(img[j,i])]
      z = "\##{arr.map {|x| x.to_s(16).rjust(2, '0')}.join.upcase}"
      # z.gsub!(/^#/, '')
      x = sprintf("%X", z.hex ^ 0xFFFFFF)
      default_theme_color = ChunkyPNG::Color.from_hex(z)
      new_theme_color     = ChunkyPNG::Color.from_hex(x)
      background          = ChunkyPNG::Color::WHITE
      tolerance           = 5
      img.change_theme_color!(default_theme_color, new_theme_color, background, tolerance)
      img.save('/home/agiratech/Desktop/clock_red.png')
     end
    end
  end
end

imagecolor = Image_color.new
str = "/home/agiratech/Desktop/super-mario-running.png"
imagecolor.reverse(str)



