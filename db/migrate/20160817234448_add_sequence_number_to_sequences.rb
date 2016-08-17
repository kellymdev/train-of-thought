class AddSequenceNumberToSequences < ActiveRecord::Migration[5.0]
  def change
    add_column :sequences, :sequence_number, :integer
  end
end
