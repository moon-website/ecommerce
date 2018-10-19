class CreateTrainingClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :training_classes do |t|
      t.string :name
      t.string :status, default: true
      t.string :start_day
      
      t.timestamps
    end
  end
end
