module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    # This class is used as a parent for all mutations, and it is the place to have common utilities
    null false
    # argument_class Types::BaseArgument
    # field_class Types::BaseField
    # input_object_class Types::BaseInputObject
    # object_class Types::BaseObject
  end
end
