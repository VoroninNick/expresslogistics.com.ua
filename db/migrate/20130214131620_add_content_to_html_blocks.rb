class AddContentToHtmlBlocks < ActiveRecord::Migration
  def change
    add_column :html_blocks, :content_rus, :text
    add_column :html_blocks, :content_ukr, :text
    add_column :html_blocks, :content_eng, :text
    add_column :html_blocks, :content_de, :text
  end
end
