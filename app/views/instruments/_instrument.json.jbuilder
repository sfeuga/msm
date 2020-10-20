# frozen_string_literal: true

json.extract! instrument, :id, :title, :description, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
