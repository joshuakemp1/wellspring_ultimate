module PhotoTask
	class PhotoTask
		include PhotoGrabber::PhotoRetriever

		def perform #rake task method
			snagging_images
		end
	end
end