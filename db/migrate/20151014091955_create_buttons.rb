class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :name, null: false
      t.binary :image
      t.binary :sound
      t.belongs_to :event, null: false, index: true

      t.timestamps null: false
    end
  end
end
