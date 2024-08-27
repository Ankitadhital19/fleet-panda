class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :featured
      t.string :image

      t.timestamps
    end
  end
end
