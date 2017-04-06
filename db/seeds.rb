20.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
end

20.times do
  parent_id = rand(1..10)
  nanny_id = rand(11..20)
  start_time = Faker::Time.forward(23, :morning)
  stop_time = Faker::Time.forward(23, :evening)
  duration = stop_time - start_time
  number_of_kids = rand(4)
  Sitting.create!(
    parent_id: parent_id,
    nanny_id: nanny_id,
    start_time: start_time,
    stop_time: stop_time,
    duration: duration,
    number_of_kids: number_of_kids,
    billed_amount: (number_of_kids * 10) * duration)
end 