module MoviesHelper
	def user_email
		user = User.find @movie.user_id
		return user.email
	end

	def youtube_embed(youtube_url)
	  if youtube_url[/youtu\.be\/([^\?]*)/]
	    youtube_id = $1
	  else
	    youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
	    youtube_id = $5
	  end
	  return "http://www.youtube.com/embed/#{ youtube_id }"
	end


end
