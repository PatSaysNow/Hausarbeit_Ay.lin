class ProduktesController < ApplicationController
  before_action :set_produkte, only: [:show, :edit, :update, :destroy]

  # GET /produktes
  # GET /produktes.json
  def index
    @produktes = Produkte.all
  end

  # GET /produktes/1
  # GET /produktes/1.json
  def show
  end

  # GET /produktes/new
  def new
    @produkte = Produkte.new
  end

  def painting_params
  params.require(:produkte).permit(:name, :image, :remote_image_url)
  end

  # GET /produktes/1/edit
  def edit
  end

  # POST /produktes
  # POST /produktes.json
  def create
    @produkte = Produkte.new(produkte_params)

    respond_to do |format|
      if @produkte.save
        format.html { redirect_to @produkte, notice: 'Produkte was successfully created.' }
        format.json { render action: 'show', status: :created, location: @produkte }
      else
        format.html { render action: 'new' }
        format.json { render json: @produkte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produktes/1
  # PATCH/PUT /produktes/1.json
  def update
    respond_to do |format|
      if @produkte.update(produkte_params)
        format.html { redirect_to @produkte, notice: 'Produkte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @produkte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produktes/1
  # DELETE /produktes/1.json
  def destroy
    @produkte.destroy
    respond_to do |format|
      format.html { redirect_to produktes_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produkte
      @produkte = Produkte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produkte_params
      #params.require(:produkte).permit(:name,:image, :remote_image_url)
      params.require(:produkte).permit(:name)
    end
end
