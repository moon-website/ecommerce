class AddReferenceToSubService < ActiveRecord::Migration[5.1]
  def change
    add_reference :sub_services, :service, index: true
  end
end
