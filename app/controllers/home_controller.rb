class HomeController < ApplicationController

  def index
    @page_title = "Larken Farms Orchard"
    @page = 'h'
    @home_id = true
    @content_id = false
  end

  def about
    @page_title = "About Us"
    @page = 'a'
    @content_id = true
  end

  def peaches
    @page_title = "Our Peaches"
    @page = 'p'
    @content_id = true
  end

  def pricing
    @page_title = "Pricing"
    @page = 'pr'
    @content_id = true
  end

  def ordering
    @page_title = "Ordering"
    @page = 'o'
  end

  def location
    @page_title = "Location"
    @page = 'l'
    @content_id = true
  end

  def contact
    @page_title = "Contact Us"
    # @page = 'c'
    # @content_id = true
  end

end
