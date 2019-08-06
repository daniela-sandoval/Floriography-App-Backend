class CreateBouquetFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :bouquet_flowers do |t|
      t.references :bouquet, foreign_key: true
      t.references :flower, foreign_key: true

      t.timestamps
    end
  end
end
