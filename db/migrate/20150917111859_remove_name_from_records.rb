class RemoveNameFromRecords < ActiveRecord::Migration
  def change
    remove_column :records, :name, :string
  end
end
