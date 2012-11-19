class CreateFavCarts < ActiveRecord::Migration
  def change
    create_table :fav_carts do |t|

      t.timestamps
    end
  end
end
