class AddNamesToPageVersions < ActiveRecord::Migration
  def change
    add_column :page_versions, :rus_name, :string
    add_column :page_versions, :ua_name, :string
    add_column :page_versions, :eng_name, :string
    add_column :page_versions, :de_name, :string
  end
end
