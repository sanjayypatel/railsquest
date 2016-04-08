if Rails.env.development?

# Seed Characters
  10.times do |n|
    character = Character.new(
      name: Faker::Name.name,
      nickname: Faker::StarWars.droid,
      bio: Faker::Lorem.paragraph(5)
      )
    character.save!
  end
  puts "#{Character.count} characters created."
end
puts "Finished Seeding."