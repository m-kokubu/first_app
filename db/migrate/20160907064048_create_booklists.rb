class CreateBooklists < ActiveRecord::Migration
  def change
    create_table :booklists do |t|

      t.timestamps null: false
    end
  end
end
