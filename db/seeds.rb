# frozen_string_literal: true

10.times do
  Instrument.create!(
    [
      {
        title: Faker::App.name,
        description: Faker::ChuckNorris.fact
      }
    ]
  )
end
