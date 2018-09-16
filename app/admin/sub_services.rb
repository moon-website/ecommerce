ActiveAdmin.register SubService do
  permit_params :image, :title_vn, :title_en, :description_vn, :description_en, :price

  index do
    selectable_column
    column :id
    column :title_en
    column :title_vn
    column :description_en
    column :description_vn
    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :title_en
      f.input :title_vn
      f.input :description_en
      f.input :description_vn
      f.input :price
    end

    f.inputs "Images" do
      f.input :image, as: :file
    end
    f.actions
  end
end
