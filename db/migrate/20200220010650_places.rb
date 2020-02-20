class Places < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :address
      t.references :user
      t.boolean :approval, default: false
      t.timestamps
    end
  end
end
