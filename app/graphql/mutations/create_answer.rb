module Mutations
  class CreateAnswer < BaseMutation
    # TODO: define return fields
    field :answer, Types::AnswerType, null: false

    # TODO: define arguments
    argument :body, String, required: true
    argument :comment_id, String, required: true

    type Types::AnswerType

    # TODO: define resolve method
    def resolve(body:, comment_id:)
      answer =
        Answer.new(body: body, comment_id: comment_id, user: current_user)
      if answer.save
        { answer: answer, errors: [] }
      else
        { answer: nil, errors: answer.errors.full_messages }
      end
    end
  end
end
