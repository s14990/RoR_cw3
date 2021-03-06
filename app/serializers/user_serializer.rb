class UserSerializer < ActiveModel::Serializer
  attributes :email, :admin
  attribute :email_domain, if: -> { :admin==false }
  
  belongs_to :manager

  def email_domain
    object.email.split('@').last
  end

end
