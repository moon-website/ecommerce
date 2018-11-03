ActiveAdmin.register TrainingClass do
  permit_params :name, :start_day, :image

  index do
    selectable_column
    column :id
    column :name
    column :start_day

    actions
  end

  form do |f|
    f.inputs "General Information" do
      f.input :name
      f.input :start_day
    end

    f.inputs "Images" do
      f.input :image, as: :file
      f.input :course_id, label: 'Course', as: :select, collection: Course.all.map{|s| ["#{s.name_vn}", s.id]}, selected: object.course_id
    end
    f.actions
  end

end
