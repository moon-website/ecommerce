ActiveAdmin.register Course do
  permit_params :thumbnail_image, :name_vn, :name_en, :price, :description_vn, :description_en, :schedule_vn, :schedule_en,
                :summary_vn, :summary_en, :represent_image_1, :represent_image_2, :represent_image_3

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
      f.input :description_en, input_html: { class: "summernote"}
      f.input :description_vn, input_html: { class: "summernote"}
      f.input :schedule_en
      f.input :schedule_vn
      f.input :price
      f.input :summary_en
      f.input :summary_vn
    end

    f.inputs "Images" do
      f.input :thumbnail_image, as: :file
      f.input :represent_image_1, as: :file
      f.input :represent_image_2, as: :file
      f.input :represent_image_3, as: :file
    end
    f.actions
  end
end
