class AddFeaturesContentwebs < ActiveRecord::Migration[6.1]
  def change
    add_column :contentwebs, :nom_site, :string
    add_column :contentwebs, :titre_hero, :string
    add_column :contentwebs, :slogan, :string
    add_column :contentwebs, :descrp_title_1, :string
    add_column :contentwebs, :descrp_title_2, :string
    add_column :contentwebs, :descrp_title_3, :string
    add_column :contentwebs, :descrp_title_4, :string
    add_column :contentwebs, :descrp_sub_title_1, :string
    add_column :contentwebs, :descrp_sub_title_2, :string
    add_column :contentwebs, :descrp_sub_title_3, :string
    add_column :contentwebs, :descrp_sub_title_4, :string
    add_column :contentwebs, :descrp_text_1, :text
    add_column :contentwebs, :descrp_text_2, :text
    add_column :contentwebs, :descrp_text_3, :text
    add_column :contentwebs, :descrp_text_4, :text
    add_column :contentwebs, :header5, :string
    add_column :contentwebs, :header6, :string
    add_column :contentwebs, :sub_header1, :string
    add_column :contentwebs, :sub_header2, :string
    add_column :contentwebs, :sub_header3, :string
    add_column :contentwebs, :sub_header4, :string
    add_column :contentwebs, :sub_header5, :string
    add_column :contentwebs, :sub_header6, :string
    add_column :contentwebs, :content6, :text
  end
end
