class CreateManagers < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Manager", :group_name => "Manager")
    create_content_table :managers, :prefix=>false do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
