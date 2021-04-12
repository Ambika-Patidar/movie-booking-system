class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :duration
      t.string :thumbnail_url
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
