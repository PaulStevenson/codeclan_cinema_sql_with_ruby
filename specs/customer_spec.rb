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

        def test_pay_for_film
        assert_equal(10, @film.price)  
        end

      end
