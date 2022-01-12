module Mutations
  class CreateComment < BaseMutation
    # TODO: define return fields
    field :comment, Types::CommentType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end

    argument :body, String, required: true

    type Types::CommentType

    def resolve(body: nil)
      user = current_user
      comment = user.comments.build(body: body)
      if comment.save
        Notification.create(
          user_id: current_user.id,
          comment_id: comment.id,
          answer_id: 1,
          read: false
        )
        { comment: comment, errors: [] }
      else
        { comment: nil, errors: comment.errors.full_messages }
      end
    end
  end
end
