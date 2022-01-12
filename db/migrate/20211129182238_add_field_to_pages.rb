class AddFieldToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :title1, :string
    add_column :pages, :title2, :string
    add_column :pages, :title3, :string
    add_column :pages, :title4, :string
    add_column :pages, :title5, :string
    add_column :pages, :title6, :string
    add_column :pages, :subtitle1, :string
    add_column :pages, :subtitle2, :string
    add_column :pages, :subtitle3, :string
    add_column :pages, :subtitle4, :string
    add_column :pages, :subtitle5, :string
    add_column :pages, :subtitle6, :string
    add_column :pages, :text1, :text
    add_column :pages, :text2, :text
    add_column :pages, :text3, :text
    add_column :pages, :text4, :text
    add_column :pages, :text5, :text
    add_column :pages, :text6, :text
  end
end
