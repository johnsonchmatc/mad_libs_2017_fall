namespace :fake do
  desc "generates fake users"
  task users: :environment do
    50.times do
        user = User.create(first_name: Faker::Name.first_name,
                           last_name: Faker::Name.last_name,
                           email: Faker::Internet.email,
                           password: 'P@ssw0rd!',
                           password_confirmation: 'P@ssw0rd!')
        puts "#{user.first_name} #{user.last_name} #{user.email}"
    end
  end

end
