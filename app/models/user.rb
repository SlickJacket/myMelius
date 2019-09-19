class User < ApplicationRecord
  # has_secure_password
  belongs_to :company

  has_many :reviewed_users, foreign_key: :reviewer_id, class_name: 'Review'
  has_many :reviewees, through: :reviewed_users

  has_many :reviewing_users, foreign_key: :reviewee_id, class_name: 'Review'
  has_many :reviewers, through: :reviewing_users

end
