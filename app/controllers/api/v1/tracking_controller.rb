class Api::V1::TrackingController < ApplicationController

  def show
    @keyword = Keyword.find(params[:id])
    impressionist(@keyword)

    render json: @keyword.attributes.merge(impressions_counts: @keyword.impressionist_count)
  end

  def click
    @keyword = Keyword.find(params[:id])
    impressionist(@keyword, message: 'click')

    render json: @keyword.attributes.merge(click_counts: @keyword.impressions.where("message like '%click%'").count)
  end
end