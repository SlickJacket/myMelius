class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  belongs_to :company


  has_many :reviewed_users, foreign_key: :reviewer_id, class_name: 'Review'
  has_many :reviewees, through: :reviewed_users

  has_many :reviewing_users, foreign_key: :reviewee_id, class_name: 'Review'
  has_many :reviewers, through: :reviewing_users

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '500x500#>'
  }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


end
