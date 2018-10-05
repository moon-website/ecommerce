ActiveAdmin.register Client do
  permit_params :name, :address, :image, :creature, :phone, :email

index do
selectable_column
column :id
column :name
column :phone
column :email
column :address

actions
end

form do |f|
f.inputs "General Information" do
f.input :name
f.input :phone
f.input :email
f.input :address
end

f.inputs "Images" do
f.input :image, as: :file
f.input :creature, as: :file
end
f.actions
end
end
