10.times do
  Order.create(
    performer_name: Faker::Name.unique.name
  )
end

10.times do
  Service.create(
    title: Faker::String.random(length: [0, 6]),

  )
end

Service.create( title: Faker::String.random(length: [0, 6]))

s = Service.new( title: Faker::String.random(length: [0, 6]))
