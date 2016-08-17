class CreateSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :sequences do |t|
      t.belongs_to :step
      t.belongs_to :thought
      t.timestamps
    end
  end
end
