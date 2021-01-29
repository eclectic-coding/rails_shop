
if User.find_by(email: "user@example.com")
  puts "No need to seed User table"
else
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user@example.com",
    password: "password",
    password_confirmation: "password"
  )
  puts "Seeded Teacher table"
end

