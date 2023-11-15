puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
light_spacious_garden_flat = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

pizza_east = {
  name: 'Pizza East',
  address: 'Pizza Street N10',
  description: 'Nice place to make pizzas while you rest',
  price_per_night: 150,
  number_of_guests: 4
}

dark_alley_room = {
  name: 'Dark Alley Room',
  address: 'Dark Avenue N12',
  description: 'Very dark, nice sleep in here',
  price_per_night: 25,
  number_of_guests: 2
}

phantasm_flat = {
  name: 'Phantasm Flat',
  address: 'Dark Avenue N13',
  description: 'Can you even see it?',
  price_per_night: 50,
  number_of_guests: 3
}

[light_spacious_garden_flat, pizza_east, dark_alley_room, phantasm_flat].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
