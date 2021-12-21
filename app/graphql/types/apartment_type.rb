module Types
  class ApartmentType < Types::BaseObject
    graphql_name 'Apartment'
    description 'An Apartment Type'
    field :id, Int
    field :room_type, String
    field :description, String
    field :resort_id, Int
  end

end
