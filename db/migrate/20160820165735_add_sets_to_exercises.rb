class AddSetsToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :sets, :text
  end
end
