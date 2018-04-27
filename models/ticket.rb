require_relative("../db/sql_runner")
require_relative('customer')
require_relative('film')

class Ticket

attr_reader :id
attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @customer_id = options['customer_id'].to_i if options['id']
    @film_id = options['film_id'].to_i if options['id']

  end

end
