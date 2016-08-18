class AddIndicatorToThoughts < ActiveRecord::Migration[5.0]
  def change
    add_column :thoughts, :indicator, :string
  end
end
