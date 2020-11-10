class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :path
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
