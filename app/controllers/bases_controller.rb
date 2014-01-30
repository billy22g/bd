class BasesController < ApplicationController

  def show
    @base = Base.find_by(name: params[:id].titleize)
  end
end
