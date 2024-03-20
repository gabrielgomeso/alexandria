class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :uuid
      t.string :name
      t.string :author
      t.string :category
      t.string :isbn
      t.string :publisher
      t.date :publication_date
      t.string :language
      t.text :description
      t.string :page_number
      t.boolean :borrowed
      t.string :current_holder_id

      t.timestamps
    end
  end
end
