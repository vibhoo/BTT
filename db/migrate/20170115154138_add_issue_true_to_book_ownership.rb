class AddIssueTrueToBookOwnership < ActiveRecord::Migration
  def change
    add_column :book_ownerships, :issue, :boolean, default: true
  end
end
