class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :role
  def me 
    {
      role: self.object.role
      full_name: self.object.full_name
    }
end
