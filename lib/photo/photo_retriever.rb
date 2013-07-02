require 'flickraw'

module Photo::PhotoRetriever

	FLICKR_USER_ID = ENV['FLICKR_ID']

	def snagging_images
		FlickRaw.api_key = ENV['FLICKR_KEY']
    FlickRaw.shared_secret = ENV['FLICKR_SECRET']


    i = 0
    @photo = []
    list = flickr.photos.search(:user_id => FLICKR_USER_ID)
    @length = list.length
    until i >=  @length do
    info = flickr.photos.getInfo(:photo_id => list[i].id)
    @photo[i] = FlickRaw.url_b(info)
    i +=1
	end 
end
end