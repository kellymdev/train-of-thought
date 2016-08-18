class AddMindfulnessToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :mindfulness, :boolean
  end
end
