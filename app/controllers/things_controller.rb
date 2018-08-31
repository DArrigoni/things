class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end

  def create
    Thing.create(params.require(:thing).permit(:name, :count))
    redirect_to things_path
  end
end
