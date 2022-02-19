class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false, default: ''
      t.text :url, null: false, default: ''
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
