class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.integer :rating

      t.timestamps
    end
    add_index :movies, :title, unique: true
    add_index :movies, :overview, unique: true
  end
end
