class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :meta_title
      t.text :meta_description
      t.integer :position
      t.string :slug
      
      t.timestamps
    end
  end
end
