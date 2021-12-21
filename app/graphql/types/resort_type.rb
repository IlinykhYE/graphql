module Types
  class ResortType < Types::BaseObject
    graphql_name 'Resort'
    description 'A Resort Type'

    field :id, Int
    field :name, String
    field :email, String
    field :description, String

    field :apartments, ApartmentType do
      argument :size, Int, default_value: 15
    end
    def apartments(size:)
      Apartment.all.limit(size).order(id: :asc)
    end
  end
end
