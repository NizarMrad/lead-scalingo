class CreateContentwebs < ActiveRecord::Migration[6.1]
  def change
    create_table :contentwebs do |t|
      t.text :header
      t.text :header2
      t.text :header3
      t.text :header4
      t.text :contentmain
      t.text :content2
      t.text :content3
      t.text :content4
      t.text :content5
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
