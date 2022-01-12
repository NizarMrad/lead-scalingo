module Mutations
  class CreateAppointement < BaseMutation
    # TODO: define return fields
    field :appointement, Types::AppointementType, null: false

    # TODO: define arguments
    argument :motif, String, required: true
    argument :date, GraphQL::Types::ISO8601DateTime, required: true

    type Types::AppointementType

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    def resolve(motif:, date:)
      user = current_user
      appointement = user.appointements.build(motif: motif, date: date)
      if appointement.save
        { appointement: appointement, errors: [] }
      else
        { appointement: nil, errors: appointement.errors.full_messages }
      end
    end
  end
end
