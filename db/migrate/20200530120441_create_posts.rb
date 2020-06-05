class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: false

      t.timestamps
    end
  end
end
