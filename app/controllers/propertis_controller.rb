class PropertisController < ApplicationController
  before_action :set_properti, only: [:show, :edit, :update, :destroy]
  def index
    @propertis = Properti.all
  end

  def new
    @properti = Properti.new
    2.times { @properti.nearest_stations.build }
  end

  def create
    @properti = Properti.new(properti_params)
    if params[:back]
      render :new
    else
      if @properti.save
        flash[:notice] = "物件を登録しました"
        redirect_to propertis_path
      else
        render :new
      end
    end
  end

  def show
    @nearest_stations = @properti.nearest_stations
  end

  def edit
  end

  def update
    if @properti.update(properti_params)
      flash[:notice] = "物件情報を編集しました"
        redirect_to propertis_path
    else
      render :edit
    end
  end

  def destroy
    @properti.destroy
    flash[:notice] = "物件情報を削除しました"
    redirect_to propertis_path
  end

  def confirm
    @properti = Properti.new(properti_params)
    render :new if @properti.invalid?
  end

  private
  def properti_params
    params.require(:properti).permit(
      :properties_name,
      :rent,
      :adress,
      :age_of_building,
      :note,
      nearest_stations_attributes: [:id, :route_name, :satation_name, :walking_taime ]
    )
  end

  def set_properti
    @properti = Properti.find(params[:id])
  end
end
