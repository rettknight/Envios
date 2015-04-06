class EnviosController < ApplicationController
  before_action :set_envio, only: [:show, :edit, :update, :destroy]

  # GET /envios
  # GET /envios.json
  def index
    @envios = Envio.all
  end

  # GET /envios/1
  # GET /envios/1.json
  def show
  end

  # GET /envios/new
  def new
    @envio = Envio.new
  end

  # GET /envios/1/edit
  def edit
  end

  # POST /envios
  # POST /envios.json
  def create
    @envio = Envio.new(envio_params)

    respond_to do |format|
      if @envio.save
        format.html { redirect_to @envio, notice: 'Envio was successfully created.' }
        format.json { render :show, status: :created, location: @envio }
      else
        format.html { render :new }
        format.json { render json: @envio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envios/1
  # PATCH/PUT /envios/1.json
  def update
    respond_to do |format|
      if @envio.update(envio_params)
        format.html { redirect_to @envio, notice: 'Envio was successfully updated.' }
        format.json { render :show, status: :ok, location: @envio }
      else
        format.html { render :edit }
        format.json { render json: @envio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envios/1
  # DELETE /envios/1.json
  def destroy
    @envio.destroy
    respond_to do |format|
      format.html { redirect_to envios_url, notice: 'Envio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envio
      @envio = Envio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envio_params
      params[:envio].permit(:status,:reference,:origin,:destiny,:department,:comments,:date,:idUser,:idTransport,:idDetail)
      
    end
end
