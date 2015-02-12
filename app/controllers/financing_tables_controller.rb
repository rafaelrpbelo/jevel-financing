class FinancingTablesController < ApplicationController
  before_action :set_financing, only: [ :show, :edit, :update, :destroy ]

  def index
    @financings = FinancingTable.all
  end

  def new
    @financing = FinancingTable.new
  end

  def create
    @financing = FinancingTable.create(financing_params)
    respond_with @financing, location: root_path
  end

  def edit
  end

  def update
    @financing.update(financing_params)
    respond_with @financing, location: root_path
  end

  def destroy
    @financing.destroy
    respond_with @financing, location: root_path
  end

  ### Non-resourceful

  def simulation
  end

  private

  def financing_params
    params.require(:financing_table).permit(:bank, :time, :return, :coefficient, :initial_year, :end_year)
  end

  def set_financing
    @financing = FinancingTable.find(params[:id])
  end
end

