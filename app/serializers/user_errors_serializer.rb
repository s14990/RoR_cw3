class UserErrorsSerializer < ActiveModel::Serializer
  attribute :error.size
  
#  attribute :message1,if: :errors.contain["app/controllers/users_controller.rb:14:in `create"] 
#  attribute :message1,if: !:errors.contain["app/controllers/users_controller.rb:14:in `create"]

  
#  def message
#    "Error in create"
#  end

end

