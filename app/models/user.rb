class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  belongs_to :company
  has_many :images


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

  def average 
    total = 0
    if self.reviewing_users.length <= 0
      return  0

else
  self.reviewing_users.each do |review|
    total+= review.rating     
  end 
      totflt = total/self.reviewing_users.length
  return totflt.round(2)
end

end

def datetime 
  array = []
    self.reviewing_users.map do |review|
        @reviewer = User.find(review.reviewer_id)
        array << {"reviewername" => @reviewer.name, "rating" => review.rating, "comment" => review.comment, "dateposted" => review.created_at.strftime("%m-%d-%Y")}
    end
    return array

end

end
