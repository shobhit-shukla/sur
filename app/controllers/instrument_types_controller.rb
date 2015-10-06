class InstrumentTypesController < ApplicationController
  before_action :set_instrument_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @instrument_types = InstrumentType.all
    respond_with(@instrument_types)
  end

  def show
    respond_with(@instrument_type)
  end

  def new
    @instrument_type = InstrumentType.new
    respond_with(@instrument_type)
  end

  def edit
  end

  def create
    @instrument_type = InstrumentType.new(instrument_type_params)
    @instrument_type.save
    respond_with(@instrument_type)
  end

  def update
    @instrument_type.update(instrument_type_params)
    respond_with(@instrument_type)
  end

  def destroy
    @instrument_type.destroy
    respond_with(@instrument_type)
  end

  private
    def set_instrument_type
      @instrument_type = InstrumentType.find(params[:id])
    end

    def instrument_type_params
      params.require(:instrument_type).permit(:name, :description)
    end
end
