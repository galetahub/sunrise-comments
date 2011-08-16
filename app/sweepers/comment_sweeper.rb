class CommentSweeper < ActionController::Caching::Sweeper
	observe Comment
	
	def after_create(item)
		expire(item)
	end
	
	def after_update(item)
		expire(item)
	end
	
	def after_destroy(item)
		expire(item)
	end
	
	private
	
	  def expire(item=nil)
  	  expire_fragment(%r{/comments})
	    Sunrise::Utils.clear_cache
	  end
end
