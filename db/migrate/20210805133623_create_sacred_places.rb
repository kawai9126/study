class CreateSacredPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :sacred_places do |t|
      t.integer :user_id, null: false
      t.string :image_id, null: false
      t.string :title, null: false
      t.string :contents, null: false

      t.timestamps
    end
  end
end
