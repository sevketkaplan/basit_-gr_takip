class SinifsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sinif, only: [:show, :edit, :update, :destroy]

  # GET /sinifs
  # GET /sinifs.json
  def index
    @sinifs = Sinif.all
  end

  # GET /sinifs/1
  # GET /sinifs/1.json
  def show
  end

  # GET /sinifs/new
  def new
    @sinif = Sinif.new
  end

  # GET /sinifs/1/edit
  def edit
  end

  # POST /sinifs
  # POST /sinifs.json
  def create
    @sinif = Sinif.new(sinif_params)

    if !current_user.yonetici?
      flash[:notice] = "Bu sınıfı kayıt yapabilmeniz için yönetici izni gereklidir !!"
      redirect_to new_sinif_path
    else
      if @sinif.save
       redirect_to @sinif 
       flash[:notice]='Sinif was successfully created.'        
     end
   end
 end

  # PATCH/PUT /sinifs/1
  # PATCH/PUT /sinifs/1.json
  def update
    if !current_user.yonetici?
      flash[:notice] = "Bu sınıfı güncelleyebilmeniz için yönetici izni gereklidir !!"
      redirect_to new_sinif_path
    else
      if @sinif.update(sinif_params)
       redirect_to @sinif 
       flash[:notice]='Sinif was successfully updated.' 
     end
   end
 end

  # DELETE /sinifs/1
  # DELETE /sinifs/1.json
  def destroy
    if !current_user.yonetici?
      flash[:notice] = "Bu öğrencinin kaydını güncelleyebilmeniz için yönetici izni gereklidir !!"
      redirect_to new_sinif_path
    else
      if @sinif.destroy
        sinifs_url
        flash[:notice]= 'Sinif was successfully destroyed.'
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sinif
      @sinif = Sinif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sinif_params
      params.require(:sinif).permit(:adi)
    end
  end
