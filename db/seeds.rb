require "open-uri"

# Garden.destroy_all

# ana = User.create(email: "ana@email.com", password: "123456")

# Garden.create(
#   name: "Sunny Garden",
#   description: "A beautiful garden with many blooming flowers and a sunny atmosphere.",
#   image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden1.jpg')),
#   user: ana
# )

# Garden.create(
#   name: "Vegetable Garden",
#   description: "A garden rich in fresh vegetables. Here, tomatoes, carrots, and much more grow.",
#   image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden2.jpg')),
#   user: ana
# )

# Garden.create(
#   name: "Rose Garden",
#   description: "A romantic garden full of roses in different colors and shapes.",
#   image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden3.jpg')),
#   user: ana
# )

# Garden.create(
#   name: "Japanese Garden",
#   description: "A zen-inspired garden with bonsai trees, cherry blossoms, and a pond.",
#   image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden4.jpg')),
#   user: ana
# )

Garden.destroy_all
User.destroy_all

picture1 = URI.open("https://i.imgur.com/nduns83.jpeg")
picture2 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dcf1.jpg")
picture3 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")

# picture4 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")
# picture5 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")
# picture6 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")

# picture7 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")
# picture8 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")
# picture9 = URI.open("https://philoplanta.de/wp-content/uploads/2021/02/UNADJUSTEDNONRAW_thumb_dce3.jpg")

ana = User.create(email: "ana@email.com", password: "123456")

garden1 = Garden.new(
  name: "Sunny Garden",
  description: "A beautiful garden with many blooming flowers and a sunny atmosphere.",
  long_description: "Enjoy the beauty of nature in this sunny garden. With a variety of blooming flowers, it provides a peaceful retreat for nature lovers.",
  user: ana,
  # price: 20.00,
  # address: "123 Sunny Street, Berlin"
)

garden1.main_photo.attach(io: picture1, filename: "garden1", content_type: "image/jpg")
garden1.sub_photos.attach(io: picture2, filename: "garden1_sub1", content_type: "image/jpg")
garden1.sub_photos.attach(io: picture3, filename: "garden1_sub2", content_type: "image/jpg")

garden1.save

# garden2 = Garden.new(
#   name: "Vegetable Garden",
#   description: "A garden rich in fresh vegetables. Here, tomatoes, carrots, and much more grow.",
#   long_description: "Experience the joy of harvesting your own vegetables in this thriving vegetable garden. From tomatoes to carrots, this garden has it all.",
#   user: ana,
#   price: 15.00,
#   address: "456 Veggie Lane, Berlin",
# )

# garden2.main_photo.attach(io: picture4, filename: "garden2", content_type: "image/jpg")
# garden2.sub_photos.attach(io: picture5, filename: "garden2_sub1", content_type: "image/jpg")
# garden2.sub_photos.attach(io: picture6, filename: "garden2_sub2", content_type: "image/jpg")

# garden2.save

# garden3 = Garden.new(
#   name: "Rose Garden",
#   description: "A romantic garden full of roses in different colors and shapes.",
#   long_description: "Immerse yourself in the romance of this exquisite rose garden. With roses of various colors and shapes, it's a perfect setting for love and tranquility.",
#   user: ana,
#   price: 25.00,
#   address: "789 Rose Avenue, Berlin",
# )

# garden3.main_photo.attach(io: picture7, filename: "garden1", content_type: "image/jpg")
# garden3.sub_photos.attach(io: picture8, filename: "garden1_sub1", content_type: "image/jpg")
# garden3.sub_photos.attach(io: picture9, filename: "garden1_sub2", content_type: "image/jpg")

# garden3.save

# Garden.create(
#   name: "Japanese Garden",
#   description: "A zen-inspired garden with bonsai trees, cherry blossoms, and a pond.",
#   long_description: "Experience serenity in this Japanese garden. With bonsai trees, cherry blossoms, and a peaceful pond, it offers a tranquil escape from the hustle and bustle.",
#   user: ana,
#   price: 30.00,
#   address: "101 Zen Lane, Berlin",
# )

# garden1.main_photo.attach(io: picture1, filename: "garden1", content_type: "image/jpg")
# garden1.sub_photos.attach(io: picture2, filename: "garden1_sub1", content_type: "image/jpg")
# garden1.sub_photos.attach(io: picture3, filename: "garden1_sub2", content_type: "image/jpg")

# garden1.save
