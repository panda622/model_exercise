class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :headline
      t.integer :like, default: 0
      t.integer :position
    end
  end
end
