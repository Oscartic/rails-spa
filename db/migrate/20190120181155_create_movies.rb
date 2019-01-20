class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :year
      t.string :ranking
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
