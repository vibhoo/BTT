class CreateBookOwnerships < ActiveRecord::Migration
  def change
    create_table :book_ownerships do |t|
      t.references :book, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
