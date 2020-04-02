class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.decimal :length, default: 0

      t.timestamps
    end
  end
end
