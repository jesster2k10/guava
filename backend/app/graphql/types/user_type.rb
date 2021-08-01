module Types
  class UserType < Types::BaseNode
    description 'A user object'

    field :email, String, "The user's email address", null: false
    field :username, String, "The user's username", null: false
  end
end
