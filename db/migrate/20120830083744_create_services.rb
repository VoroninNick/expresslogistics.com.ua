class CreateServices < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Service", :group_name => "Service")
    create_content_table :services, :prefix=>false do |t|
      t.string :name
      t.string :name_rus
      t.string :name_ukr
      t.string :name_de
      t.string :name_eng
      t.text :intro
      t.text :intro_rus
      t.text :intro_ukr
      t.text :intro_de
      t.text :intro_eng
      t.text :descr
      t.text :descr_rus
      t.text :descr_ukr
      t.text :descr_de
      t.text :descr_eng

      t.timestamps
    end
  end
end
