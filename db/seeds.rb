rake db:drop
rake db:create
rake db:migrate

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

s = Service.create(title:'test', order: Order.first)

Order.first.services << Service.first

Order.first.services(true)

Order.first.services.create(title: 'test1')

Order.first.services.find(4)