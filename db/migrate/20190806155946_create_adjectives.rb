class CreateAdjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :adjectives do |t|
      t.string :name
      t.references :tone, foreign_key: true

      t.timestamps
    end
  end
end
