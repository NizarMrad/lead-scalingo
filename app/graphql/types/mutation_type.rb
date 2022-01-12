module Types
  class MutationType < Types::BaseObject
    field :create_appointement, mutation: Mutations::CreateAppointement
    field :create_webmodif, mutation: Mutations::CreateWebmodif
    field :create_facebookmodif, mutation: Mutations::CreateFacebookmodif
    field :create_googlemodif, mutation: Mutations::CreateGooglemodif
    field :create_answer, mutation: Mutations::CreateAnswer
    field :create_comment, mutation: Mutations::CreateComment
    field :comment, mutation: Mutations::Comment
  end
end
