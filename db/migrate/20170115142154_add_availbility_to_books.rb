class AddAvailbilityToBooks < ActiveRecord::Migration
  def change
    add_column :books, :availbility, :integer
  end
end
