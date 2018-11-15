class OgrencisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ogrenci, only: [:show, :edit, :update, :destroy]

  # GET /ogrencis
  # GET /ogrencis.json
  def index
    @search=Ogrenci.ransack(params[:q])
    @ogrencis=@search.result.all.order("created_at DESC")

    respond_to do |format|
      format.html
      format.csv { send_data @ogrencis.to_csv }
      format.xls  
    end

  end

  # GET /ogrencis/1
  # GET /ogrencis/1.json
  def show
  end

  # GET /ogrencis/new
  def new
    @ogrenci = Ogrenci.new
  end

  # GET /ogrencis/1/edit
  def edit
  end


  # POST /ogrencis
  # POST /ogrencis.json
  def create
    @ogrenci = Ogrenci.new(ogrenci_params)
    @ogrenci.date=Date.today

    if Ogrenci.exists?(tc_no:  @ogrenci.tc_no)
      flash[:notice] = "Bu öğrenci zaten KAYITLI !!"
      redirect_to new_ogrenci_path
    else
      if !current_user.yonetici?
        flash[:notice] = "Bu öğrencinin kaydını gerçekleştirebilmeniz için yönetici izni gereklidir !!"
        redirect_to new_ogrenci_path
      else
        if @ogrenci.save
         flash[:notice]="Öğrenci kaydı başarıyla oluşturuldu.!!" 
         redirect_to @ogrenci         
       end
     end
   end
 end


  # PATCH/PUT /ogrencis/1
  # PATCH/PUT /ogrencis/1.json
  def update
    if !current_user.yonetici?
      flash[:notice] = "Bu öğrencinin kaydını güncelleyebilmeniz için yönetici izni gereklidir !!"
      redirect_to new_ogrenci_path
    else
      if @ogrenci.update(ogrenci_params)
        redirect_to @ogrenci 
        flash[:notice] = "Ogrenci was successfully updated. !!"
      end
    end
  end
  # DELETE /ogrencis/1
  # DELETE /ogrencis/1.json
  def destroy
    if !current_user.yonetici?
      flash[:notice] = "Bu öğrencinin kaydını güncelleyebilmeniz için yönetici izni gereklidir !!"
      redirect_to new_ogrenci_path
    else
      if @ogrenci.destroy
        redirect_to ogrencis_path
        flash[:notice]='Ogrenci was successfully destroyed.' 
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ogrenci
      @ogrenci = Ogrenci.find(params[:id])


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ogrenci_params
      params.require(:ogrenci).permit(:avatar, :adi, :soyadi, :tc_no, :tel_no, :kan_grubu, :okul, :sinif, :bolum, :adres, :veli_ad, :veli_soyad, :veli_tel, :veli_tel2, :date, :ogrsinif)
    end
  end
