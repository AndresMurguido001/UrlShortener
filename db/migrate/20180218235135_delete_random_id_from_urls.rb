class DeleteRandomIdFromUrls < ActiveRecord::Migration[5.1]
  def change
    remove_column :urls, :random_id
  end
end
