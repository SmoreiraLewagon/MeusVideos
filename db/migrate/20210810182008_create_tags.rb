class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.boolean :favorite, null: false, default: false
      t.string :category
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
