class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :place
      t.text :review
      t.timestamps
    end
  end
end
