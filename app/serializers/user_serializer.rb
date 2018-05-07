class UserSerializer < ActiveModel::Serializer
  attributes :email, :admin
  attribute :email_domain, if: -> { user.admin? }

  def email_domain
    object.email.split('@').last
  end
end
