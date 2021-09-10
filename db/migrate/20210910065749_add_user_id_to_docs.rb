class AddUserIdToDocs < ActiveRecord::Migration[6.1]
  def change
    add_column :docs, :user_id, :bigint
  end
end
