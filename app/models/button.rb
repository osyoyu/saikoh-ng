class Button < ActiveRecord::Base
  include Redis::Objects

  belongs_to :event

  counter :count

end
