require 'faker'
puts "Cleaning database..."

Restaurant.destroy_all
puts "Creating restaurants..."

15.times do
  Restaurant.create(name: Faker::Book.title, address: Faker::Address.street_address, category: ["chinese", "italian", "japanese", "french", "belgian"].sample, phone_number: Faker::PhoneNumber.cell_phone)
end
puts "Finished!"
