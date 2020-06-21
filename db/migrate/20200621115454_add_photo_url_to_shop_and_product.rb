class AddPhotoUrlToShopAndProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :photo_url, :string
    add_column :products, :photo_url, :string
  end
end
