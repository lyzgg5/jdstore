class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fill: [200, 200]
  end

  version :medium do
    process resize_to_fill: [400, 400]
  end
  # Provide a default URL as a default if there hasn't been a file uploaded:
  Product.create!(title: "QC-35",
     description: "耳机",
     price: 2800,
     quantity: 5,
     image: open("https://drive.google.com/file/d/0B6bccYkYyU2-dXJRSThJMi1sZUk/view?usp=sharing")
     )

   Product.create!(title: "Iphone7",
     description: "手机",
     price: 5000,
     quantity: 5,
     image: open("https://drive.google.com/file/d/0B6bccYkYyU2-ZGF0cjcyeFlUaXM/view?usp=sharing")
     )

   Product.create!(title: "Cherry Keyboard",
     description: "G80-3000键盘",
     price: 2800,
     quantity: 5,
     image: open("https://drive.google.com/file/d/0B6bccYkYyU2-bTU0eV9yeFpIZFU/view?usp=sharing")
     )

end
