class RemoveNotNullFromButtonEventId < ActiveRecord::Migration
  def change
    change_column_null :buttons, :event_id, true
  end
end
