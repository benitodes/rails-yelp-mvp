puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '11111111',
    category:        'italian',
  },
  {
    name:         'Old men',
    address:      'Canggu',
    phone_number:  '22222222',
    category:        'french',
  },
  {
    name:         'Helthy Tibes',
    address:      'Berawa',
    phone_number:  '33333333',
    category:        'belgian',
  },
  {
    name:         'Samba Sushi',
    address:      'Kuta',
    phone_number:  '44444444',
    category:        'chinese',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
