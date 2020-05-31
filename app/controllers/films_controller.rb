class FilmsController < ApplicationController
  def index
    @results = Film.all
  end
end
