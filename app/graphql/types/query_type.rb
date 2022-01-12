module Types
  class QueryType < Types::BaseObject
    field :comments, [Types::CommentType], null: false
    field :facebookmodifs, [Types::FacebookmodifType], null: false
    field :googlemodifs, [Types::GooglemodifType], null: false
    field :webmodifs, [Types::WebmodifType], null: false

    def comments
      Comment.where(user: current_user)
    end

    def facebookmodifs
      Facebookmodif.where(user: current_user)
    end

    def googlemodifs
      Googlemodif.where(user: current_user)
    end

    def webmodifs
      Webmodif.where(user: current_user)
    end
  end
end
