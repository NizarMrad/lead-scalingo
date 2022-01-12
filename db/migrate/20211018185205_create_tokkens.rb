class CreateTokkens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokkens do |t|
      t.text :fbTokken
      t.text :gTokken
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
