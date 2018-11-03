ActiveAdmin.register Product do
  permit_params :image, :name_vn, :name_en,  :description_vn, :description_en, :price

  index do
    selectable_column
    column :id
    column :name_vn
    column :price
    column :description_vn
    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :name_en
      f.input :name_vn
      f.input :description_en, input_html: { class: "summernote"}
      f.input :description_vn, input_html: { class: "summernote"}
      f.input :price
      f.input :category_id, label: 'Category', as: :select, collection: Category.all.map{|s| ["#{s.name_vn}", s.id]}, selected: object.category_id
    end

    f.inputs "Images" do
      f.input :image, as: :file
    end
    f.actions
  end
end
