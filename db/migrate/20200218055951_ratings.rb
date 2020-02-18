class Ratings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :user
      t.references :place
      t.integer :value
      t.timestamps
    end
  end
end
