class UserErrorsSerializer < ActiveModel::Serializer
  attributes :errors,:user,:message3
  attribute :message1,if: :created?
  attribute :message1,if: -> { :created? == false }
  
  def message1
    'Error in create' 
  end
  
  def message2
    'Error in edit' 
  end
  
  def message3
    :errors.count 
  end
  
  def created
    :user.persisted?
  end
end
