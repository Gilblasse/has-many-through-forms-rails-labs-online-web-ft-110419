class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories



  def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(username: user_attributes[:username]) unless user_attributes[:username].blank?
  end

end
