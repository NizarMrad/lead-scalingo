module Types
  class AppointementType < Types::BaseObject
    field :id, ID, null: false
    field :motif, String, null: true
    field :date, GraphQL::Types::ISO8601DateTime, null: true
    field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
