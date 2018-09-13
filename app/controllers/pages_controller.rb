class PagesController < ApplicationController
  def home
    @quote = [1,2,3,4].shuffle.first
  end

  def education
  end

  def info
  end

  def involve
  end
end
