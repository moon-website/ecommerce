class CreateEmailTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :email_templates do |t|
      t.string :name
      t.string :subject
      t.text :plain_content
      t.text :html_content
      t.string :category
      t.string :active
      t.string :sender
      t.text :notes

      t.timestamps
    end
  end
end
