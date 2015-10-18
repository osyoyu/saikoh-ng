class Button < ActiveRecord::Base
  belongs_to :event

  def count
    100
  end
end
