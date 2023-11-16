class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.string :comment

      t.timestamps
    end
    add_index :bookmarks, :comment, unique: true
  end
end