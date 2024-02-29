require "open-uri"

Garden.destroy_all
User.destroy_all

picture1 = URI.open("https://www.mein-schoener-garten.de/sites/default/files/schrebergarten-hortensien-florapress_01556916.jpg")
picture2 = URI.open("https://www.haus.de/sites/default/files/2021-07/aufmacher_7.jpg")
picture3 = URI.open("https://www.mein-schoener-garten.de/sites/default/files/schneeballhortensie-annabelle-aufmacher-iStock-184279510.jpg")

picture4 = URI.open("https://images.immediate.co.uk/production/volatile/sites/10/2019/11/2048x1365-10-ways-to-improve-your-garden-shed-GettyImages-128127121-5765a1b.jpg?quality=90&resize=940,627")
picture5 = URI.open("https://i.pinimg.com/564x/52/80/7a/52807aa206d7fbccea702551cd768748.jpg")
picture6 = URI.open("https://gpnmag.com/wp-content/uploads/2020/10/Dahlia-Grande-Purple-Improved-Beekenkamp.jpg")

picture7 = URI.open("https://housebeautiful.cdnds.net/17/26/1600x1398/gallery-1498744679-rustic-garden-shed.jpg")
picture8 = URI.open("https://i.pinimg.com/474x/f8/0c/d0/f80cd01869864d8830b4d30680e0eb93.jpg")
picture9 = URI.open("https://i.pinimg.com/474x/13/e8/96/13e896108ec65632fd15b4c038cb31a1.jpg")

picture10 = URI.open("https://www.gartenhaus-gmbh.de/magazin/wp-content/uploads/2018/02/gartenhaus-schrebergarten-blau.jpg")
picture11 = URI.open("https://i.pinimg.com/474x/19/a0/c0/19a0c0e68314537357837b65c2a824cc.jpg")
picture12 = URI.open("https://i.pinimg.com/474x/5b/ca/28/5bca282e6d8d5645d299c42ddde3cbd0.jpg")

ana = User.create(email: "ana@email.com", password: "123456")
# pedro = User.create(email: "pedro@email.com", password: "123456")

garden1 = Garden.new(
  name: "Sunny Garden",
  description: "A beautiful garden with many blooming flowers and a sunny atmosphere.",
  long_description: "Enjoy the beauty of nature in this sunny garden. With a variety of blooming flowers, it provides a peaceful retreat for nature lovers.",
  user: ana,
  price: 20.00,
  address: "123 Sunny Street, Berlin"
)

garden1.main_photo.attach(io: picture1, filename: "garden1", content_type: "image/jpg")
garden1.sub_photos.attach(io: picture2, filename: "garden1_sub1", content_type: "image/jpg")
garden1.sub_photos.attach(io: picture3, filename: "garden1_sub2", content_type: "image/jpg")

garden1.save

garden2 = Garden.new(
  name: "Vegetable Garden",
  description: "A garden rich in fresh vegetables. Here, tomatoes, carrots, and much more grow.",
  long_description: "Experience the joy of harvesting your own vegetables in this thriving vegetable garden. From tomatoes to carrots, this garden has it all.",
  user: ana,
  price: 15.00,
  address: "456 Veggie Lane, Berlin"
)

garden2.main_photo.attach(io: picture4, filename: "garden2", content_type: "image/jpg")
garden2.sub_photos.attach(io: picture5, filename: "garden2_sub1", content_type: "image/jpg")
garden2.sub_photos.attach(io: picture6, filename: "garden2_sub2", content_type: "image/jpg")

garden2.save

garden3 = Garden.new(
  name: "Rose Garden",
  description: "A romantic garden full of roses in different colors and shapes.",
  long_description: "Immerse yourself in the romance of this exquisite rose garden. With roses of various colors and shapes, it's a perfect setting for love and tranquility.",
  user: ana,
  price: 25.00,
  address: "789 Rose Avenue, Berlin",
)

garden3.main_photo.attach(io: picture7, filename: "garden3", content_type: "image/jpg")
garden3.sub_photos.attach(io: picture8, filename: "garden3_sub1", content_type: "image/jpg")
garden3.sub_photos.attach(io: picture9, filename: "garden3_sub2", content_type: "image/jpg")

garden3.save

garden4 = Garden.new(
  name: "Fruitful Garden",
  description: "An orchard filled with a variety of delicious fruits.",
  long_description: "Indulge in the flavors of nature with our fruitful orchard. From juicy apples to sweet peaches, this garden offers a diverse selection of delicious fruits.",
  user: ana,
  price: 25.00,
  address: "456 Orchard Street, Berlin"
)

garden4.main_photo.attach(io: picture10, filename: "garden4", content_type: "image/jpg")
garden4.sub_photos.attach(io: picture11, filename: "garden4_sub1", content_type: "image/jpg")
garden4.sub_photos.attach(io: picture12, filename: "garden4_sub2", content_type: "image/jpg")

garden4.save
