class RemoveUserIdFromTweets < ActiveRecord::Migration[5.0]
  def change
    remove_column :tweets, :user_id, :string
  end
end
