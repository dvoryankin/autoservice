# rake db:drop
# rake db:create
# rake db:migrate

10.times do
  Order.create(
    customer_name: Faker::Name.unique.name
  )
end

10.times do
  Service.create( title: Faker::Color.color_name, order_id: rand(1..10), category_id: rand(1..10))
end

10.times do
  Performer.create( name: Faker::Artist.name, service_id: rand(1..10))
end

10.times do
  Category.create( title: Faker::Space.planet)
end



s = Service.create(title:'test', order: Order.first)

Order.first.services << Service.first

# Order.first.services(true)

Order.first.services.create(title: 'test1')

# Order.first.services.find(4)
