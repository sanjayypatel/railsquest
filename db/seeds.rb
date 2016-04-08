if Rails.env.development?

  # Seed Characters
  10.times do
    character = Character.new(
      name: Faker::Name.name,
      nickname: Faker::StarWars.droid,
      bio: Faker::Lorem.paragraph(5)
      )
    character.save!
  end
  puts "#{Character.count} characters created."

  # Seed Items
  10.times do
    item = Item.new(
      name: Faker::Commerce.product_name,
      quantity: Faker::Number.digit,
      description: Faker::Lorem.paragraph(3)
      )
    item.save!
  end
  puts "#{Item.count} items created."
end

puts "Finished Seeding."