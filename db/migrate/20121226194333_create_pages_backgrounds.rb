class CreatePagesBackgrounds < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "PagesBackground", :group_name => "PagesBackground")
    create_content_table :pages_backgrounds, :prefix=>false do |t|
      t.string :name
      

      t.timestamps
    end
  end
end
