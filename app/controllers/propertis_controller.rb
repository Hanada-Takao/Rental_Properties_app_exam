class PropertisController < ApplicationController
  before_action :set_properti, only: [:show, :edit, :update, :destroy]
  def index
    @propertis = Properti.all
  end

  def new
    @properti = Properti.new
  end

  def create
    @properti = Properti.new(properti_params)
    if @properti.save
      flash[:notice] = "物件を登録しました"
      redirect_to propertis_path
    else
      render :new
    end
  end

  def show
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

  private
  def properti_params
    params.require(:properti).permit(
      :properties_name,
      :rent,
      :adress,
      :age_of_building,
      :note
    )
  end

  def set_properti
    @properti = Properti.find(params[:id])
  end
end
