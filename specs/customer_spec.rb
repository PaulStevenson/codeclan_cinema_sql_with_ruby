require("minitest/autorun")
require("minitest/rg")
require_relative('../models/customer')
require_relative('../models/film')

class CustomerTest < MiniTest::Test
  def setup
    @customer1 = Customer.new({
    "name" => "Rodger",
    "fund" => 10})
    @film1 = Film.new({
    "title" => "The Lion King",
    "price" => 10})
  end


    def test_get_fund
      assert_equal(10, @customer1.fund)
    end

    def test_get_price
      assert_equal(10,@film1.price)
    end
##NOT WORKING - UNDEFINED METHOD 
    # def test_reduce_price_from_funds
    #   @customer1.get_price(@film1)
    #   assert_equal(10,@customer1.funds)
    # end

end
