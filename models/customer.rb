require_relative("../db/sql_runner")

class Customer

  attr_reader :id
  attr_accessor :name, :fund

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @fund = options['fund'].to_i
  end

  def save()
    sql = 'INSERT INTO customers (name, fund)
    VALUES ($1, $2)
    RETURNING id'
    values = [@name, @fund]
    customer = SqlRunner.run(sql, values)[0]
    @id = customer['id'].to_i
  end

  def delete()
    sql = "DELETE FROM customers where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql = "UPDATE customers SET (name, fund) = ($1, $2) WHERE id = $3"
    values = [@name, @fund, @id]
    SqlRunner.run(sql, values)
  end

  ##CLASS
  def self.map_items(customer_data)
    result = customer_data.map { |customer| Customer.new( customer ) }
    return result
  end

  def self.all()
    sql = 'SELECT * FROM customers'
    customer_data = SqlRunner.run(sql)
    return Customer.map_items(customer_data)
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end


end
