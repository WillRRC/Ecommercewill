ActiveAdmin.register Category do

  permit_params :catname, :catdesc, :cat_id

  form do |f|
    f.inputs do
      f.input :catname
      f.input :catdesc
      f.input :cat_id, :label => "Cat ID"
    end
    f.actions
  end

end
