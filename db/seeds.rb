if Rails.env.development?

  # Seed Games
  5.times do
    game = Game.new(
      title: Faker::Book.title,
      description: Faker::Lorem.paragraph(10)
    )
    game.save!
    5.times do 
      location = Location.new(
        name: Faker::StarWars.planet,
        description: Faker::Lorem.paragraph(3),
        game: game
      )
      location.save!
      snippet = Snippet.new(
        title: Faker::Book.title,
        body: Faker::Lorem.paragraph(15),
        location: location
      )
      snippet.save!
      item = Item.new(
        name: Faker::Commerce.product_name,
        quantity: Faker::Number.digit,
        description: Faker::Lorem.paragraph(3),
        location: location
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
  end
  locations = Location.all
  games = Game.all

  # Seed Snippets
  10.times do
    snippet = Snippet.new(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraph(15),
      location: locations.sample
    )
    snippet.save!
  end
  snippets = Snippet.all
  40.times do 
    snippet = Snippet.new(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraph(15),
      parent: snippets.sample
    )
    snippet.save!
  end

  # Seed Characters
  10.times do
    character = Character.new(
      name: Faker::Name.name,
      nickname: Faker::StarWars.droid,
      bio: Faker::Lorem.paragraph(5),
      game: games.sample
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
    item = Item.new(
      name: Faker::Commerce.product_name,
      quantity: Faker::Number.digit,
      description: Faker::Lorem.paragraph(3),
      character: character
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
  puts "#{Character.count} characters created."
  puts "#{Snippet.count} snippets created."
  puts "#{Game.count} games created."
  puts "#{Location.count} locations created."
  puts "#{Item.count} items created."
  puts "#{Statistic.count} stats created."
end

puts "Finished Seeding."