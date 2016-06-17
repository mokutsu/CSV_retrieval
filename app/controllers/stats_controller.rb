class StatsController < ApplicationController
  # before_action :default_to_json

  def index
    @stats = Stat.all

    if params[:start_id]
      params = stats_params
      min_id = [params[:start_id].to_i, params[:end_id].to_i].min
      max_id = [params[:start_id].to_i, params[:end_id].to_i].max
      @stats = Stat.where(:id => min_id..max_id)

      respond_to do |format|
        format.any { render json: @stats.to_json}
      end
    end

  end

  def import
    Stat.import(params[:file])
    redirect_to root_url, notice: "Upload ok!"
  end

  private
  def stats_params
  params.permit(:start_id, :end_id)
  end

  def default_to_json
    request.format = :json
  end

end
