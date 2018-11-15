class OdevsController < ApplicationController
  
  before_action :set_odev, only: [:show, :edit, :update, :destroy]

  # GET /odevs
  # GET /odevs.json
  def index
   @search=Odev.ransack(params[:q])
   @odevs=@search.result.all.order("created_at DESC")

   respond_to do |format|
    format.html
    format.csv { send_data @odevs.to_csv }
    format.xls  
  end


end

  # GET /odevs/1
  # GET /odevs/1.json
  def show
  end

  # GET /odevs/new
  def new
    @odev = Odev.new
  end

  # GET /odevs/1/edit
  def edit
  end

  # POST /odevs
  # POST /odevs.json
  def create
    @odev = Odev.new(odev_params)
    @odev.date=Date.today
    

    respond_to do |format|
      if @odev.save
        format.html { redirect_to @odev, notice: 'Odev was successfully created.' }
        format.json { render :show, status: :created, location: @odev }
      else
        format.html { render :new }
        format.json { render json: @odev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odevs/1
  # PATCH/PUT /odevs/1.json
  def update
    respond_to do |format|
      if @odev.update(odev_params)
        format.html { redirect_to @odev, notice: 'Odev was successfully updated.' }
        format.json { render :show, status: :ok, location: @odev }
      else
        format.html { render :edit }
        format.json { render json: @odev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odevs/1
  # DELETE /odevs/1.json
  def destroy
    @odev.destroy
    respond_to do |format|
      format.html { redirect_to odevs_url, notice: 'Odev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odev
      @odev = Odev.find(params[:id])
      @ogrenci=Ogrenci.find(@odev.ogrid)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odev_params
      params.require(:odev).permit(:ogrid, :ogretmen_id, :ad, :soyad, :sinif, :date, :teslim_date, :ders_adi, :aciklama, :durum)
    end
  end
