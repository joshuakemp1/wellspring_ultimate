require 'flickraw'

module PhotoGrabber::PhotoRetriever

FLICKR_USER_ID = ENV['FLICKR_ID']

  def snagging_images
		
    FlickRaw.api_key = ENV['FLICKR_KEY']
    FlickRaw.shared_secret = ENV['FLICKR_SECRET']


    flickr.photos.search(:user_id => FLICKR_USER_ID).each do |p|
        info = flickr.photos.getInfo(:photo_id => p.id)

        title = info.title
        taken = info.dates.taken
        square_url = FlickRaw.url_s(info)
        original_url = FlickRaw.url_o(info)


        Portfolio.where(title: title, url: square_url, taken: taken, url_large: original_url).first_or_create!

  end

 end
end