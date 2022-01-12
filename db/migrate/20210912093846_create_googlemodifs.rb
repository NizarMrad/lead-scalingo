class CreateGooglemodifs < ActiveRecord::Migration[6.1]
  def change
    create_table :googlemodifs do |t|
      t.text :change1
      t.text :change2
      t.text :change3
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
