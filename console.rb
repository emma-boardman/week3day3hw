require_relative( './models/pets')
require_relative( './models/store')

require( 'pry-byebug' )

store1 = Store.new( { 'name' => 'Slash''s Snake Pit', 'address' => 'The Cathouse, California', 'stock_type' => 'Snake'})

store2 = Store.new( { 'name' => 'The Def Leppard Emporium', 'address' => 'The Steelworks, Sheffield', 'stock_type' => 'Leopard'})

store3 = Store.new( { 'name' => 'Temple of the Dog', 'address' => 'Seattle, America', 'stock_type' => 'Dog'})

store1.save()
store2.save()
store3.save()

pet1 = Pet.new( { 'name' => 'George', 'type' => 'Snake'})
pet2 = Pet.new( { 'name' => 'Bill', 'type' => 'Leopard'})
pet3 = Pet.new( { 'name' => 'Harry', 'type' => 'Snake'})
pet4 = Pet.new( { 'name' => 'Steve', 'type' => 'Dog'
  })
pet4 = Pet.new( { 'name' => 'Barry', 'type' => 'Dog'
  })
pet5 = Pet.new( { 'name' => 'Myles', 'type' => 'Snake'
  })
pet6 = Pet.new( { 'name' => 'Roger', 'type' => 'Leopard'
  })
pet7 = Pet.new( { 'name' => 'Tim', 'type' => 'Dog'
  })

pet1.save()
pet2.save()
pet3.save()
pet4.save()
pet5.save()
pet6.save()
pet7.save()

binding.pry
nil