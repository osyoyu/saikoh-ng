class Event < ActiveRecord::Base
  has_many :buttons

  validates :name, presence: true
  validates :buttons, presence: true
  validate :buttons_slugs_are_unique, on: [:create, :update]

  def buttons_slugs_are_unique
    unless buttons.empty?
      slugs = buttons.collect(&:slug)
      if slugs != slugs.uniq
        errors.add(:buttons, "can't share the same slug")
      end
    end
  end
end
