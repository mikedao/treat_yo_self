class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.boolean :do_i_deserve_this

      t.timestamps null: false
    end
  end
end
