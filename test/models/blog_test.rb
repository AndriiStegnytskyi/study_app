require 'test_helper'

class BlogTest < ActiveSupport::TestCase

	def setup 
		@user = users(:one)
		@blog = Blog.new(content: "Some content of my first micropost", user_id: @user.id)
	end

	test "is blog correct?" do
		assert @blog.valid?
	end

	test "user id should be present" do
		@blog.user_id = nil
		assert_not @blog.valid?
	end

end
