class AddRandomStringToUrls < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :random_string, :string
  end
end
