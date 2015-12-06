class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /purchases
  # GET /purchases.json
  def index
    if current_user.admin?
      @purchases = Purchase.all
    else
      @purchases = Purchase.find_by_sql("SELECT * FROM purchases WHERE user_id = " + current_user.id.to_s)
    end
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
<<<<<<< HEAD
    @comment = Comment.new
    @comments = Comment.where(purchase_id: @purchase.id)
=======
    @purchase=Purchase.find(params[:id])
>>>>>>> c63c5deb2a4bdc9cc60259b69a838071f36364a9
  end

  # GET /purchases/new
  def new
    @purchase = Purchase.new
  end

  # GET /purchases/1/edit
  def edit
    @purchase=Purchase.find(params[:id])

  end

  # POST /purchases
  # POST /purchases.json
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.status = 0
    @purchase.user_id = current_user.id
    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
        format.json { render :show, status: :created, location: @purchase }
      else
        format.html { render :new }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchases/1
  # PATCH/PUT /purchases/1.json
  def update
    @purchase=Purchase.find(params[:id])
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
    @purchase=Purchase.find(params[:id])
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_params
      params.require(:purchase).permit( :created_at,
      :updated_at,
      :user_id,
      :status,
      :from_page,
      :to_page,
      :number_pages_per_pages,
      :bandw,
      :binding,
      :tape,
      :comments)
    end
end
