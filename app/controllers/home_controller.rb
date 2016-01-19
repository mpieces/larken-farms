class HomeController < ApplicationController

  def index
    @page_title = "Larken Farms Orchard"
    @page = 'h'
  end

  def about
    @page_title = "About Us"
    @page = 'a'
  end

  def peaches
    @page_title = "Our Peaches"
    @page = 'p'
  end

  def pricing
    @page_title = "Pricing"
    @page = 'pr'
  end

  def ordering
    @page_title = "Ordering"
    @page = 'o'
  end

  def location
    @page_title = "Location"
    @page = 'l'
  end

  def contact
    @page_title = "Contact Us"
    @page = 'c'
  end

end
