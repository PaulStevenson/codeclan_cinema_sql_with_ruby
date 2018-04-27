require_relative("../db/sql_runner")

class Customer

  attr_reader :id
  attr_accessor :name, :fund

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @fund = options['fund'].to_i
  end


end
