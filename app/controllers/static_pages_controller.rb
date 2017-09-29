class StaticPagesController < ApplicationController
  def home
    @stories = Turn.all
  end

  def about
    @gems = ["rails", "crypt", "sqlite"]
  end
end
