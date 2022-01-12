module Types
  class AnswerType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :comment_id, Integer, null: false
    field :body, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
