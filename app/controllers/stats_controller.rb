class StatsController < ApplicationController

  def index
    @stats = Stat.all
  end

  def import
    binding.pry
    Stat.import(params[:file])
    redirect_to root_url, notice: "Upload ok!"
  end
end
