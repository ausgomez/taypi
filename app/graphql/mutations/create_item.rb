module Mutations
    class CreateItem < BaseMutation
        # arguments passed to the `resolve` method
        argument :title, String, required: true
        argument :description, String, required: true
        argument :image_url, String, required: false

        # return type from the mutation
        type Types::ItemType
        
        def resolve(title: nil, description: nil, image_url: nil)
            Item.create!(
                title: title,
                description: description,
                image_url: image_url,
                artist: Artist.first
            )
        end
    end
end