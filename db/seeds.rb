if Rails.env.development?

  # Seed Games
  2.times do
    game = Game.new(
      title: Faker::Book.title,
      description: Faker::Lorem.paragraph(10)
    )
    game.save!
  end

  # Seed Characters
  10.times do
    character = Character.new(
      name: Faker::Name.name,
      nickname: Faker::StarWars.droid,
      bio: Faker::Lorem.paragraph(5)
      )
    character.save!
    statistic = Statistic.new(
      name: "HP",
      value: 70,
      minimum: 0,
      maximum: 70,
      unit: "points",
      describable_id: character.id,
      describable_type: "Character"
      )
    statistic.save!
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
    statistic = Statistic.new(
      name: "Durabillity",
      value: 100,
      minimum: 0,
      maximum: 100,
      unit: "percent",
      describable_id: item.id,
      describable_type: "Item"
      )
    statistic.save!
  end

  puts "#{Game.count} games created."
  puts "#{Item.count} items created."
  puts "#{Statistic.count} stats created."
end

puts "Finished Seeding."