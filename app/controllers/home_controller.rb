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

  def gallery
    @page_title = "Gallery"
    @page = 'g'
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

  def FAQs
    @page_title = "FAQ's"
    @page = 'f'
  end

  def season
  end

  def pick
  end

  # def facts
  # end

end
