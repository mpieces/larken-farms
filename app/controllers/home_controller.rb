class HomeController < ApplicationController

  def index
    @page_title = "Larken Farms Orchard"
    @page = 'h'
    @updates = Update.all.order("created_at desc")
    @hours = Hour.last
  end

  def about
    @page_title = "About Us"
    @page = 'a'
    # @about = About.last
  end

  def produce
    @page_title = "Our Produce"
    @page = 'p'
  end

  def gallery
    @page_title = "Photo Gallery"
    @page = 'g'
  end

  # def ordering
  #   @page_title = "Ordering"
  #   @page = 'o'
  # end

  def location
    @page_title = "Location"
    @page = 'l'
  end

  def contact
    @page_title = "Contact Us"
    @page = 'c'
  end

  def faqs
    @page_title = "FAQs"
    @page = 'f'
  end

end
