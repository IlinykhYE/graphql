module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, "An example field added by the generator"

    def test_field
      "Hello World!"
    end

    # All resorts
    field :all_resorts, ResortType, 'All Resorts everywhere'do
      argument :size, Int, default_value: 15
    end

    def all_resorts(size:)
      Resort.all.limit(size).order(id: :asc)
    end

    field :resort, ResortType do
      argument :id, Int
    end

    def resort(id:)
      Resort.find(id)
    end

    field :all_apartments, ApartmentType, 'All Apartment everywhere'do
      argument :size, Int, default_value: 15
    end

    def all_apartments(size:)
      Apartment.all.limit(size).order(id: :asc)
    end

    field :apartment, ApartmentType do
      argument :id, Int
    end

    def apartment(id:)
      Apartment.find(id)
    end

end
  end