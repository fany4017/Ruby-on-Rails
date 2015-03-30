class FoodsController < ApplicationController
  def posts
		@posts = Post.all
	end

  def posts_category
  	case params[:category]
		when "korean"
			@category = "한식"
		when "japanese"
			@category = "일식"
		when "chinese"
			@category = "중식"
		else
			@category = "양식"
		end
		@posts = Post.where(category: @category)
	end

  def show#id받아서 Post테이블에서 검색한게 @post에저장됨.
		@post = Post.find(params[:id])
	end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
