class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :address
      t.string :status
      t.string :description
      t.string :pet_names

      t.timestamps
    end
  end
end
