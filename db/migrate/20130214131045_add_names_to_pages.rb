class AddNamesToPages < ActiveRecord::Migration
  def change
    add_column :pages, :rus_name, :string
    add_column :pages, :ua_name, :string
    add_column :pages, :eng_name, :string
    add_column :pages, :de_name, :string
  end
end
