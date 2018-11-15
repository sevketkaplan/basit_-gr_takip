class OgretmenController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ogretman, only: [:show, :edit, :update, :destroy]

  # GET /ogretmen
  # GET /ogretmen.json
  def index
     @search=Ogretman.ransack(params[:q])
    @ogretmen=@search.result.all.order("created_at DESC")
  end

  # GET /ogretmen/1
  # GET /ogretmen/1.json
  def show
  end

  # GET /ogretmen/new
  def new
    @ogretman = Ogretman.new
  end

  # GET /ogretmen/1/edit
  def edit
  end

  # POST /ogretmen
  # POST /ogretmen.json
  def create
    @ogretman = Ogretman.new(ogretman_params)

    if Ogretman.exists?(tc_no:  @ogretman.tc_no)
      flash[:notice] = "Bu öğretmen zaten KAYITLI !!"
      redirect_to new_ogretman_path
    else
      if !current_user.yonetici?
        flash[:notice] = "Bu öğretmenin kaydını gerçekleştirebilmeniz için yönetici izni gereklidir !!"
        redirect_to new_ogretman_path
      else
        if @ogretman.save
         flash[:notice]="Öğrenci kaydı başarıyla oluşturuldu.!!" 
         redirect_to @ogretman         
       end
     end
   end
 end


 def update
  if !current_user.yonetici?
    flash[:notice] = "Bu öğretmenin kaydını güncelleyebilmeniz için yönetici izni gereklidir !!"
    redirect_to new_ogretman_path
  else
    if @ogretman.update(ogretman_params)
      flash[:notice] = "Ogretmrn was successfully updated. !!"
      redirect_to @ogretman
    end
  end
end

  # DELETE /ogretmen/1
  # DELETE /ogretmen/1.json
  def destroy
    if !current_user.yonetici?
      flash[:notice] = "Bu öğrencinin kaydını güncelleyebilmeniz için yönetici izni gereklidir !!"
      redirect_to new_ogretman_path
    else
      if @ogretman.destroy

         redirect_to ogretmen_path
          flash[:notice]='Ogretman was successfully destroyed.'
        end
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_ogretman
      @ogretman = Ogretman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ogretman_params
      params.require(:ogretman).permit(:avatar, :adi, :soyadi, :tc_no, :kan_grubu, :aldigi_ucret, :tel, :tel2, :adres,:brans)
    end
  end
