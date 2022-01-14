namespace :dev do
  desc "TODO"
  task setup: :environment do
    
    kinds = ["Amigo", "Comercial", "Conhecido"]
    
    kinds.each do |kind|
      Kind.create!(description: kind)
    end

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between_except(from: '2014-09-23', to: '2015-09-25', excepted: '2015-01-24'),
        kind: Kind.all.sample
      )
    end

    
  end

end
