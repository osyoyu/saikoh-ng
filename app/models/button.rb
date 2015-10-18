class Button < ActiveRecord::Base
  include Redis::Objects

  counter :count
  belongs_to :event
end
