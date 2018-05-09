class Resolvers::CreateLink < GraphQL::Function

  # arguments passed for "args"
  argument :description, !types.String
  argument :url, !types.String


  # type return from mutation

  type Types::LinkType

  def call(_obj, args, _ctx)
    Link.create!(
      description: args[:description],
      url: args[:url]

    )

  end


end
