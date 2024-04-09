ActiveAdmin.register Product do
  permit_params :name, :desc, :price, :stock, :size, :image, :cat_id, :prod_id
  remove_filter :image_attachment, :image_blob
  form do |f|
    f.inputs do
      f.input :name
      f.input :desc
      f.input :price
      f.input :stock
      f.input :size
      f.input :image, as: :file
      f.input :cat_id
      f.input :prod_id
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :desc
      row :image do |im|
        link_to im.image.filename, rails_blob_path(im.image, disposition: 'preview') if im.image.attached?
      end
    end
  end


  index do
    column :name
    column :desc
    column :price
    column :stock
    column :image do |im|
      link_to im.image.filename, rails_blob_path(im.image, disposition: 'preview') if im.image.attached?
    end
  end
end
