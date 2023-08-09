puts 'Cleaning database...'
Restaurant.destroy_all

CATEGORY = %w[chinese italian japanese french belgian]

puts "Creating restaurants..."

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: CATEGORY.sample
  )
end
puts "Finished! Created #{Restaurant.count} restaurants!"
