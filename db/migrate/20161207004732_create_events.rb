class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :address
      t.string :lng
      t.string :lat
      t.integer :user_id


      t.timestamps
    end
  end
end
