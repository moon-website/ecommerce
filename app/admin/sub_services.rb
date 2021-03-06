ActiveAdmin.register SubService do
  permit_params :image, :title_vn, :title_en, :service_id, :description_vn, :description_en, :price

  index do
    selectable_column
    column :id
    column :title_vn
    column :description_vn
    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :title_en
      f.input :title_vn
      f.input :description_en, input_html: { class: "summernote"}
      f.input :description_vn, input_html: { class: "summernote"}
      f.input :price
      f.input :service_id, :label => 'Service', :as => :select, :collection => Service.all.map{|s| ["#{s.title_vn}", s.id]}, selected: object.service_id
    end

    f.inputs "Images" do
      f.input :image, as: :file
    end
    f.actions
  end
end
