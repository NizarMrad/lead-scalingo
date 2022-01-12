module Types
  class FacebookmodifType < Types::BaseObject
    field :id, ID, null: false
    field :change1, String, null: true
    field :change2, String, null: true
    field :change3, String, null: true
    field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
