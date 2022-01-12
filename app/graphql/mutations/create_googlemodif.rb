module Mutations
  class CreateGooglemodif < BaseMutation
    # TODO: define return fields
    field :googlemodif, Types::GooglemodifType, null: false

    # TODO: define arguments
    argument :change1, String, required: true
    argument :change2, String, required: false
    argument :change3, String, required: false

    type Types::GooglemodifType

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(change1:, change2:, change3:)
      user = current_user
      googlemodif =
        user.googlemodifs.build(
          change1: change1,
          change2: change2,
          change3: change3
        )
      if googlemodif.save
        { googlemodif: googlemodif, errors: [] }
      else
        { comment: nil, errors: googlemodif.errors.full_messages }
      end
    end
  end
end
