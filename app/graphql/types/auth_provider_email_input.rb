Types::AuthProviderEmailInput < GraphQL::InputObjectType.define do
  name "auth_provider_email_input"

  argument :email, !types.String
  argument :password, !types.String
end
