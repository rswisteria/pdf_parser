class CreateDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.integer :status
      t.text :markdown_content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
