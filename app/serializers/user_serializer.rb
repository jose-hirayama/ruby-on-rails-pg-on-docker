class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :mail_address
end
