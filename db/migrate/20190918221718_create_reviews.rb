class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :comment
      t.integer :reviewer_id
      t.integer :reviewee_id

      t.timestamps
    end
  end
end
