class AddStoryIdToTurns < ActiveRecord::Migration[5.1]
  def change
    add_column :turns, :story_id, :integer
  end
end
