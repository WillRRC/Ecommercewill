class Product < ApplicationRecord
  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["cat_id", "created_at", "desc", "id", "id_value", "name", "price", "prod_id", "size", "stock", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end

end
