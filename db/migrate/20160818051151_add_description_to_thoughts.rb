class AddDescriptionToThoughts < ActiveRecord::Migration[5.0]
  def change
    add_column :thoughts, :description, :string
  end
end
