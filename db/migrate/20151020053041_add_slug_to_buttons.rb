class AddSlugToButtons < ActiveRecord::Migration
  def change
    add_column :buttons, :slug, :string
    add_index :buttons, :slug
  end
end
