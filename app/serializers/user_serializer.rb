class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :email
  # exclude :password_digest
end
