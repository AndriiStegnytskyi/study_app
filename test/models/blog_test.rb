require 'test_helper'

class BlogTest < ActiveSupport::TestCase

	def setup 
		@user = User.new(name"Andrii Stegnytskyi", email: "a.stegnytskyi@gmail.com")
		@blog = Blog.new(content: "Some content of my first micropost", user_id: @user.id)
	end

end
