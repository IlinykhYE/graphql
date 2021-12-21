module Types
  class CommentType < Types::BaseObject
    field :id, Int, null: false
    field :post, PostType, null: false
  end
end