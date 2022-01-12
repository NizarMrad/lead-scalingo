module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :subject, String, null: true
    field :body, String, null: true
    field :user_id, Integer, null: false
    field :answers, [Types::AnswerType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
