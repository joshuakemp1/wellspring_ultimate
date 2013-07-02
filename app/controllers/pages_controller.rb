class PagesController < ApplicationController

include PhotoGrabber::PhotoRetriever
 
def home
  @latest = Portfolio.last_three_photos
end


def portfolio
  @portfolio = Portfolio.portfolio_photos
end

  
end
