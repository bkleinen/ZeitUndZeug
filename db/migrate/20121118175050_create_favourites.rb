class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :project_id
      t.integer :fav_cart_id

      t.timestamps
    end
  end
end
