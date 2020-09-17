class ChangeMainActorsColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :mainActors, :main_actors
  end
end
