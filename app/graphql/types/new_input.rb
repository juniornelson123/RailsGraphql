Types::NewInput = GraphQL::InputObjectType.define do
  name "New"

  argument :email, !types.String
  argument :password, !types.String
end
