class AddUserRatingToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_rating, :string
  end
end
