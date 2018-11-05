module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(width:, height:)
    "https://placem.at/people?w=#{width}&h=#{height}"
  end
end
