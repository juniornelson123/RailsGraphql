class Resolvers::CreateUser < GraphQL::Function
  AuthProviderInput = GraphQL::InputObjectType.define do
    name "AuthProviderSignupData"

    argument :email, Types::NewInput
  end

  argument :name, !types.String
  argument :authProvider, Types::NewInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:name],
      email: args[:authProvider][:email],
      password: args[:authProvider][:password]
    )
  end
end
