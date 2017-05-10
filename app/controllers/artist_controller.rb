class ArtistController < ApplicationController
  def index
  	@artists = User.all
  end

  def show
  end
end
