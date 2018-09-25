ActiveAdmin.register Category do
  permit_params :name_vn, :name_en,  :description_vn, :description_en

  index do
    selectable_column
    column :id
    column :name_en
    column :name_vn
    column :description_en
    column :description_vn
    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :name_en
      f.input :name_vn
      f.input :description_en
      f.input :description_vn
    end

    f.actions
  end
end
