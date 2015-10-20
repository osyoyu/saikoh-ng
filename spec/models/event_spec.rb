require 'rails_helper'

RSpec.describe Event, type: :model do
  it "should not accept buttons that have the same slug" do
    button1 = Button.new(name: "最高", slug: "saikoh")
    button2 = Button.new(name: "エモい", slug: "saikoh")
    event = Event.new(name: "saikoh.tk")
    event.buttons << button1
    event.buttons << button2
    expect(event).to_not be_valid
  end
end
