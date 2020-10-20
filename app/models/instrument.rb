# frozen_string_literal: true

###
# Instrument Class
#
class Instrument < ApplicationRecord
  validates :title, presence: true
  def to_s
    title
  end
end
