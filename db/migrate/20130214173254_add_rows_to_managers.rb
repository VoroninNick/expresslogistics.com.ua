class AddRowsToManagers < ActiveRecord::Migration
  def change
    add_column :managers, :name_rus, :string
    add_column :managers, :name_ukr, :string
    add_column :managers, :name_eng, :string
    add_column :managers, :name_de, :string
  end
end
