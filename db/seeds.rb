# frozen_string_literal: true

require 'bcrypt'

20.times do
  Instrument.create!(
    [
      {
        title: Faker::App.name,
        description: Faker::ChuckNorris.fact
      }
    ]
  )
end

User.create!(
  [
    {
      email: 'guillaume.thibert@gmail.com',
      password: 'pass1234',
      first_name: 'guillaume',
      last_name: 'THIBERT',
      billing_name: 'Guillaume THIBERT'
    },
    {
      email: 'sfeuga@member.fsf.org',
      password: 'pass1234',
      first_name: 'stéphane',
      last_name: 'FEUGA',
      billing_name: 'stéphane FEUGA'
    },
    {
      email: 'thomas.catella@live.fr',
      password: 'pass1234',
      first_name: 'thomas',
      last_name: 'CATELLA',
      billing_name: 'thomas CATELLA'
    }
  ]
)

2.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name.upcase
  User.create!(
    [
      {
        email: Faker::Internet.safe_email,
        password: 'pass1234',
        first_name: first_name,
        last_name: last_name,
        billing_name: "#{first_name} #{last_name}"
      }
    ]
  )
end
