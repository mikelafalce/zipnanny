10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
end

5.times do
  parent_id = rand(1..5)
  nanny_id = rand(6..10)

  Sitting.create!(
    parent_id: parent_id,
    nanny_id: nanny_id
  )
end