module Mutations
  class CreateFacebookmodif < BaseMutation
    field :facebookmodif, Types::FacebookmodifType, null: false

    # TODO: define arguments
    argument :change1, String, required: true
    argument :change2, String, required: false
    argument :change3, String, required: false

    type Types::FacebookmodifType

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(change1:, change2:, change3:)
      user = current_user
      facebookmodif =
        user.facebookmodifs.build(
          change1: change1,
          change2: change2,
          change3: change3
        )
      if facebookmodif.save
        { facebookmodif: facebookmodif, errors: [] }
      else
        { comment: nil, errors: facebookmodif.errors.full_messages }
      end
    end
  end
end
