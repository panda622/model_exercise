class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :position
      t.integer :like, default: 0
      t.string :content
    end
  end
end
