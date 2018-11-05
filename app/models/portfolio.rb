class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.spring_boot
    where(subtitle: 'Spring Boot')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'https://placem.at/people?w=600&h=400'
    self.thumb_image ||= 'https://placem.at/people?w=350&h=200'
  end
end
