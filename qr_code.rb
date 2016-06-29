require 'rqrcode'
require 'rmagick'

qrcode = RQRCode::QRCode.new("http://www.agiratech.com/")
png = qrcode.as_png(
          resize_gte_to: false,
          resize_exactly_to: false,
          fill: 'white',
          color: 'black',
          size: 120,
          border_modules: 4,
          module_px_size: 6,
          file: nil
          )
IO.write("/home/agiratech/Desktop/qrcode.png", png.to_s)
logo = Magick::Image.read("/home/agiratech/Desktop/qrcode.png").first
rect = Magick::Image.read("/home/agiratech/Desktop/aaa.png").first
rect.resize_to_fit!(30, 30)
result = logo.composite(rect, 40, 45  , Magick::CopyCompositeOp)
result.write "result.jpg"



