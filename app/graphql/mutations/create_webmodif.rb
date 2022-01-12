module Mutations
  class CreateWebmodif < BaseMutation
    field :webmodif, Types::WebmodifType, null: false

    # TODO: define arguments
    argument :change1, String, required: true
    argument :change2, String, required: false
    argument :change3, String, required: false

    type Types::WebmodifType

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(change1:, change2:, change3:)
      user = current_user
      webmodif =
        user.webmodifs.build(
          change1: change1,
          change2: change2,
          change3: change3
        )
      if webmodif.save
        { webmodif: webmodif, errors: [] }
      else
        { comment: nil, errors: webmodif.errors.full_messages }
      end
    end
  end
end
