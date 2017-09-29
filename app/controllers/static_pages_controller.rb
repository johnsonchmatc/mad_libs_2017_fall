class StaticPagesController < ApplicationController
  def home
  end

  def about
    @gems = ["rails", "crypt", "sqlite"]
  end
end
