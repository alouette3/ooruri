class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.text :description, null:false
      t.integer :price, null:false
      t.integer :primary_category_id, null:false
      t.integer :secondary_category_id
      t.string :delivery_area, null:false
      t.string :delivery_day, null:false
      t.string :delivery_charge, null:false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
