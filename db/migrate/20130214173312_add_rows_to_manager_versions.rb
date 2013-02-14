class AddRowsToManagerVersions < ActiveRecord::Migration
  def change
    add_column :manager_versions, :name_rus, :string
    add_column :manager_versions, :name_ukr, :string
    add_column :manager_versions, :name_eng, :string
    add_column :manager_versions, :name_de, :string
  end
end
