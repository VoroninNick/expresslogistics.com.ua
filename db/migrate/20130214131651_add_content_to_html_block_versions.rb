class AddContentToHtmlBlockVersions < ActiveRecord::Migration
  def change
    add_column :html_block_versions, :content_rus, :text
    add_column :html_block_versions, :content_ukr, :text
    add_column :html_block_versions, :content_eng, :text
    add_column :html_block_versions, :content_de, :text
  end
end
