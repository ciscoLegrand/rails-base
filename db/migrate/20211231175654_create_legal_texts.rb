class CreateLegalTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :legal_texts do |t|
      t.string :title
      t.integer :position
      t.string :slug

      t.timestamps
    end
    add_index :legal_texts, :slug, unique: true
  end
end
