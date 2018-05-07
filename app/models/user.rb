class User < ActiveRecord::Base
  
  belongs_to :manager, class_name: "User"
  validates :email, presence: true, format: /\A.+@.+\..+\z/, uniqueness: true
end
