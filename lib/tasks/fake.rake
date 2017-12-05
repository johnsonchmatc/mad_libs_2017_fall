namespace :fake do
  desc "generates fake stories"
  task stories: :environment do
    story_text =<<-EOF
    {{adjective}} Macdonald had a {{noun}}, E-I-E-I-O
    and on that {{noun}} he had an {{adjective}} {{verb}}, E-I-E-I-O
    EOF
    story = Story.create(content: story_text)
    500.times do
      Turn.create(story: story,
                  noun: Faker::Hacker.noun,
                  verb: Faker::Hacker.verb,
                  adverb: Faker::Hacker.ingverb,
                  adjective: Faker::Hacker.adjective)
      puts '.'
    end
  end

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
