# frozen_string_literal: true

###
# InstrumentsController Class
#
class InstrumentsController < ApplicationController
  before_action :set_instrument, only: %i[show edit update destroy]

  # GET /instruments
  # GET /instruments.json
  def index
    @instruments = if params[:title]
                     # case-insensitive search
                     Instrument.where('title ILIKE ?', "%#{params[:title]}%")
                   else
                     Instrument.all
                   end
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show; end

  # GET /instruments/new
  def new
    @instrument = Instrument.new
  end

  # GET /instruments/1/edit
  def edit; end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to @instrument, notice: t('Instrument was successfully created.') }
        format.json { render :show, status: :created, location: @instrument }
      else
        format.html { render :new }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to @instrument, notice: t('Instrument was successfully updated.') }
        format.json { render :show, status: :ok, location: @instrument }
      else
        format.html { render :edit }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to instruments_url, notice: t('Instrument was successfully destroyed.') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_instrument
    @instrument = Instrument.friendly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def instrument_params
    params.require(:instrument).permit(:title, :description)
  end
end
