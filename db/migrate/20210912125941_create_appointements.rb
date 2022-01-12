class CreateAppointements < ActiveRecord::Migration[6.1]
  def change
    create_table :appointements do |t|
      t.text :motif
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
