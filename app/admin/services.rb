ActiveAdmin.register Service do
  permit_params :order, :image, :title_vn, :title_en, :description_vn, :description_en,
  :thumbnail_image, :represent_image_1, :represent_image_2, :represent_image_3, :greating_vn, :greating_en
  index do
    selectable_column
    column :order
    column :title_en
    column :title_vn
    column :greating_vn
    column :description_vn
    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :order
      f.input :title_en
      f.input :title_vn
      f.input :description_en
      f.input :description_vn
      f.input :greating_vn
      f.input :greating_en
    end

    f.inputs "Images" do
      f.input :image, as: :file
      f.input :represent_image_1, as: :file
      f.input :represent_image_2, as: :file
      f.input :represent_image_3, as: :file
    end
    f.actions
  end
end
