class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :password_digest
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
