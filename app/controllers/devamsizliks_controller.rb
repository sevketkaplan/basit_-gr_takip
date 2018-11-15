class DevamsizliksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_devamsizlik, only: [:show, :edit, :update, :destroy]

  # GET /devamsizliks
  # GET /devamsizliks.json
  def index
    @search=Devamsizlik.ransack(params[:q])
   @devamsizliks=@search.result.all.order("created_at DESC")
 end

  # GET /devamsizliks/1
  # GET /devamsizliks/1.json
  def show
  end

  # GET /devamsizliks/new
  def new
    @devamsizlik = Devamsizlik.new
  end

  # GET /devamsizliks/1/edit
  def edit
  end

  # POST /devamsizliks
  # POST /devamsizliks.json
  def create
    @devamsizlik = Devamsizlik.new(devamsizlik_params)

    respond_to do |format|
      if @devamsizlik.save
        format.html { redirect_to @devamsizlik, notice: 'Devamsizlik was successfully created.' }
        format.json { render :show, status: :created, location: @devamsizlik }
      else
        format.html { render :new }
        format.json { render json: @devamsizlik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devamsizliks/1
  # PATCH/PUT /devamsizliks/1.json
  def update
    respond_to do |format|
      if @devamsizlik.update(devamsizlik_params)
        format.html { redirect_to @devamsizlik, notice: 'Devamsizlik was successfully updated.' }
        format.json { render :show, status: :ok, location: @devamsizlik }
      else
        format.html { render :edit }
        format.json { render json: @devamsizlik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devamsizliks/1
  # DELETE /devamsizliks/1.json
  def destroy
    @devamsizlik.destroy
    respond_to do |format|
      format.html { redirect_to devamsizliks_url, notice: 'Devamsizlik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devamsizlik
      @devamsizlik = Devamsizlik.find(params[:id])
      @ogrenci=Ogrenci.find(@devamsizlik.tc_no)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devamsizlik_params
      params.require(:devamsizlik).permit(:ad, :soyad, :tc_no, :mesaj_tel, :ogrsinif, :devamsizlik_miktari)
    end
  end
