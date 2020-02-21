class Favourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.references :user
      t.references :place
    end
  end
end
