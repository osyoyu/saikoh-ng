class Event < ActiveRecord::Base
  has_many :buttons

  validates :name, presence: true
  validates :buttons, presence: true
end
