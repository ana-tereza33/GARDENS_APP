Garden.destroy_all

ana = User.create(email: "ana@email.com", password: "123456")

Garden.create(
  name: "Sunny Garden",
  description: "A beautiful garden with many blooming flowers and a sunny atmosphere.",
  image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden1.jpg')),
  user: ana
)

Garden.create(
  name: "Vegetable Garden",
  description: "A garden rich in fresh vegetables. Here, tomatoes, carrots, and much more grow.",
  image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden2.jpg')),
  user: ana
)

Garden.create(
  name: "Rose Garden",
  description: "A romantic garden full of roses in different colors and shapes.",
  image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden3.jpg')),
  user: ana
)

Garden.create(
  name: "Japanese Garden",
  description: "A zen-inspired garden with bonsai trees, cherry blossoms, and a pond.",
  image: File.open(Rails.root.join('app', 'assets', 'images', 'garden_images', 'garden4.jpg')),
  user: ana
)
