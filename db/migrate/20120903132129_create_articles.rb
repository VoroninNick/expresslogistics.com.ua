class CreateArticles < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Article", :group_name => "Article")
    create_content_table :articles, :prefix=>false do |t|
      t.string :name
      t.string :intro_text
      t.text :first_paragraph
      t.text :proverb
      t.text :second_paragraph
      t.text :third_paragraph
      t.text :last_paragraph
      
      

      t.timestamps
    end
  end
end
