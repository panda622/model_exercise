class AddReferenceToArticlesTextsPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :texts, :article, index: true
    add_reference :pictures, :article, index: true
  end
end
