class AddLogoToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :logo, :string
  end
end
