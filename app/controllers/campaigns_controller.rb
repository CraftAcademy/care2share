class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new

  end

  def create
    @campaign = Campaign.new(params.require(:campaign).permit(:title))
 
    @campaign.save
    redirect_to campaigns_path
  end
end
