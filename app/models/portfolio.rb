class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.spring_boot
    where(subtitle: 'Spring Boot')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
