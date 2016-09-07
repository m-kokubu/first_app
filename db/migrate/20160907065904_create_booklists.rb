class CreateBooklists < ActiveRecord::Migration
  def change
    create_table :booklists do |t|
      t.string :name
      t.string :writer

      t.timestamps null: false
    end
  end
end
