class AddNameToPrey < ActiveRecord::Migration
  def change
    add_column :preys, :name, :string
  end
end
