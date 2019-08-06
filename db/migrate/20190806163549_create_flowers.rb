class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :meaning
      t.string :img_url
      t.references :adjective, foreign_key: true

      t.timestamps
    end
  end
end
