require( 'pg' )
require_relative( '../db/sql_runner' )


class Store

  attr_reader( :id, :name, :address, :stock_type)

  def initialize( options )
    @id = options['id'].to_i
    @name = options[ 'name' ]
    @address = options[ 'address' ]
    @stock_type = options[ 'stock_type' ]
  end

  def save
    sql = "INSERT INTO stores (name, address, stock_type) VALUES ('#{@name}', '#{@address}', '#{@stock_type}' ) returning *;"
    store = SqlRunner.run( sql ).first
    @id = store['id'].to_i
  end

  def get_pets
   sql = "SELECT * FROM pets WHERE type = '#{@stock_type}';"
   pets = SqlRunner.run( sql )
   result = pets.map {|pet| Pet.new( pet ) }
   return result
  end


end