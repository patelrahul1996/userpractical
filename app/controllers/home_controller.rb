class HomeController < ApplicationController
  def index
    @company = Company.all
  end
end
