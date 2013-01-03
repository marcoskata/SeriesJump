module ApplicationHelper
	def youtube_video(url)
	   render :partial => 'layouts/video', :locals => { :url => url }
   end 
end
