class CreatePreys < ActiveRecord::Migration
  def change
    create_table :preys do |t|
      t.string :person_name
      t.string :person_email
      t.string :country
      t.string :state
      t.string :city
      t.string :place

      t.timestamps
    end
  end
end
