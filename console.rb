require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')
require( 'pry-byebug' )

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({
  'name' => 'Ryan Gosling',
  'fund' => '50'})
  customer1.save()

customer2 = Customer.new({
  'name' => 'Emma Stone',
  'fund' => '45'})
  customer2.save()

customer3 = Customer.new({
  'name' => 'Karen Gillian',
  'fund' => '65'})
  customer3.save()

customer4 = Customer.new({
  'name' => 'Paul Stevenson',
  'fund' => '30'})
  customer4.save()

film1 = Film.new({
  'title' => 'The Lion King',
  'price' => '10'})
  film1.save()

film2 = Film.new({
  'title' => 'Hunt for the Wilderpeople',
  'price' => '10'})
  film2.save()

film3 = Film.new({
  'title' => 'Jingle all the way',
  'price' => '15'})
  film3.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id})
ticket1.save()

ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film1.id})
ticket2.save()

ticket3 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film2.id})
ticket3.save()

ticket4 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film2.id})
ticket4.save()

ticket5 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film3.id})
ticket5.save()

ticket6 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film3.id})
ticket6.save()

ticket7 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film3.id})
ticket7.save()

ticket8 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film3.id})
ticket8.save()











binding.pry
nil
