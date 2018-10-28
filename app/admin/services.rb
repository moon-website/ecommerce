ActiveAdmin.register Service do
  permit_params :priority, :image, :title_vn, :title_en, :description_vn, :description_en,
  :thumbnail_image, :represent_image_1, :represent_image_2, :represent_image_3, :greeting_vn, :greeting_en
  index do
    selectable_column
    column :priority
    column :title_vn
    column :greeting_vn
    column :description_vn
    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :priority
      f.input :title_en
      f.input :title_vn
      f.input :description_en, input_html: { class: "summernote"}
      f.input :description_vn, input_html: { class: "summernote"}
      f.input :greeting_en, input_html: { class: "summernote"}
      f.input :greeting_vn, input_html: { class: "summernote"}
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
