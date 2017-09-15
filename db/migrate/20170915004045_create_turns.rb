class CreateTurns < ActiveRecord::Migration[5.1]
  def change
    create_table :turns do |t|
      t.string :noun
      t.string :verb
      t.string :adverb
      t.string :adjective

      t.timestamps
    end
  end
end
