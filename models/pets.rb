require( 'pg' )
require_relative( '../db/sql_runner' )
require_relative( './store')

class Pet

  attr_reader( :id, :name, :type )

  def initialize( options )
   @id = options['id'].to_i
   @name = options[ 'name' ]
   @type = options[ 'type' ]
  end

  def save
    sql = "INSERT INTO pets (name, type) VALUES ( '#{@name}', '#{@type}') returning *;"
    pet = SqlRunner.run( sql ).first
    @id = pet['id'].to_i
  end

  def get_store
    sql = "SELECT * FROM stores WHERE stock_type = '#{@type}';"
    store = SqlRunner.run( sql ).first
    Store.new(store)
  end 
end