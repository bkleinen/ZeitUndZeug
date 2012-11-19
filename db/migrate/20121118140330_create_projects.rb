class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.date :start_date

      t.timestamps
    end
  end
end
