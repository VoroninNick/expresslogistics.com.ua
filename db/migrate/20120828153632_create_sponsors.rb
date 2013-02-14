class CreateSponsors < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Sponsor", :group_name => "Sponsor")
    create_content_table :sponsors, :prefix=>false do |t|
      t.string :name
      t.string :link
      

      t.timestamps
    end
  end
end
