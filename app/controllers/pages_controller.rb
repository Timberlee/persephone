class PagesController < ApplicationController
  def home
    @quote = ["Submerged countries, abandoned cities, fields that no longer grow. - Barack Obama","Every year the problems are getting worse. We are at the limits. If I may use a strong word I would say that we are at the limits of suicide. - Pope Francis","To resolve the climate crisis, good will, statements of intent are not enough. We are at breaking point. - French President Francois Hollande","Humanity faces many threats but none is greater than climate change. - Price Charles of Britain", "Bold climate action is in the national interest of every single country represented at this conference. The time for brinksmanship is over. - UN Secretary-General Ban Ki-Moon", "An environmental debt needs to be paid.  - Ecuadorian President Rafael Correa", "Tackling climate change is a shared mission for mankind … Let us join hands to contribute to the establishment of an equitable and effective global mechanism on climate change - Chinese President Xi Jinping", "ManBearPig, half man, half bear, half pig. - Al Gore"].shuffle.first
  end

  def education
  end
  def success
  end

  def info
  end

  def involve
  end
end
