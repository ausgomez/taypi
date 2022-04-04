# require 'test_helper'

class Mutations::CreateItemTest < ActiveSupport::TestCase
    def perform(user: nil, **args)
        Mutations::CreateItem.new(object: nil, field: nil, context: {}).resolve(args)
    end

    test 'create a new item' do
        item = perform(
            title: 'Example', description: 'This is a test description', imgUrl: 'gasdgdasgs'
        )

        assert item.persisted?
        assert_equal item.title, 'Example'
        assert_equal item.description, 'This is a test description'
        assert_equal item.img_url, 'gasdgdasgs'
    end
end