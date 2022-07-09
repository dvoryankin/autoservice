10.times do
  Order.create(
    customer_name: Faker::Name.unique.name
  )
end

5.times do
  Service.create( title: Faker::Space.planet, order_id: 1)
end

5.times do
  Service.create( title: Faker::Space.planet, order_id: 2)
end




rake db:drop
rake db:create
rake db:migrate
