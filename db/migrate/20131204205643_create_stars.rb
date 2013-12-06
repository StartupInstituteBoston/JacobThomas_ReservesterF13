class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :user_id, :null => false
      t.integer :restaurant_id, :null => false
      t.timestamps
    end

    #Index so it will be faster. Because reservester will scale. 
    add_index :stars, :user_id
    add_index :stars, :restaurant_id
  end
end
