class PagesController < ApplicationController
  def home
    @hero_color = 'inverted black'
    @cta_color = 'red'
    @cta_text = 'Sign In'
  end

  def about
  end

  def careers
  end

  def tech
  end

  def tos
  end

  def privacy
  end
end
