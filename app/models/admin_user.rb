class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  def self.ransackable_attributes(auth_object = nil)
      @ransackable_attributes ||= column_names + _ransackers.keys + _ransack_aliases.keys + attribute_aliases.keys
  end

  def self.ransackable_attributes(auth_object = nil)
    ["cat_id", "created_at", "desc", "id", "id_value", "name", "price", "prod_id", "size", "stock", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
