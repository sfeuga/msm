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
      password: 'pass1234'
    },
    {
      email: 'sfeuga@member.fsf.org',
      password: 'pass1234'
    },
    {
      email: 'thomas.catella@live.fr',
      password: 'pass1234'
    }
  ]
)

2.times do
  User.create!(
    [
      {
        email: Faker::Internet.safe_email,
        password: 'pass1234'
      }
    ]
  )
end
