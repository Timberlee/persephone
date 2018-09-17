class DisastersController < ApplicationController
  before_action :find_disaster, only: [:show, :edit, :update]

  def new
    @disaster = Disaster.new
  end

  def create
    @disaster = Disaster.new(disaster_params)

    if @disaster.save
      redirect_to @disaster
    else

      render 'new'
    end
  end

  def update
if @disaster.update(disaster_params)

  redirect_to @disaster
else
  render 'edit'
end
end

  def edit
  end

  def index
          @disaster = Disaster.all
  end

  def show
  end

  private

  def disaster_params
    params.require(:disaster).permit(:name, :description, :before, :during, :after, :basic, :basic2, :basic3, :similar, :regions)
  end

  def find_disaster
    @disaster = Disaster.find(params[:id])
  end

end
