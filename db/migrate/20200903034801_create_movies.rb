class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.integer :runTime
      t.string :rating
      t.string :mainActors, array: true, default: []

      t.timestamps
    end
  end
end
