# frozen_string_literal: true

###
# Instrument Class
#
class Instrument < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true

  def to_s
    title
  end

  has_rich_text :description
end
