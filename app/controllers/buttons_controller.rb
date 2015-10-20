class ButtonsController < ApplicationController
  before_action :set_event_and_button, only: [:show_image]

  def show_image
    if @event.buttons[0].image
      send_data @event.image, type: 'image/png', disposition: 'inline'
    else
      send_file '/Users/osyoyu/Development/saikoh-ng/db/seeds/saikoh.png', type: 'image/png', disposition: 'inline'
    end
  end

  private

  def set_event_and_button
    @event = Event.find(:event_id)
    @button = Button.find(:button_id)
  end
end
