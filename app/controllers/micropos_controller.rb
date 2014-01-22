class MicroposController < ApplicationController
  before_action :set_micropo, only: [:show, :edit, :update, :destroy]

  # GET /micropos
  # GET /micropos.json
  def index
    @micropos = Micropo.all
  end

  # GET /micropos/1
  # GET /micropos/1.json
  def show
  end

  # GET /micropos/new
  def new
    @micropo = Micropo.new
  end

  # GET /micropos/1/edit
  def edit
  end

  # POST /micropos
  # POST /micropos.json
  def create
    @micropo = Micropo.new(micropo_params)

    respond_to do |format|
      if @micropo.save
        format.html { redirect_to @micropo, notice: 'Micropo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @micropo }
      else
        format.html { render action: 'new' }
        format.json { render json: @micropo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropos/1
  # PATCH/PUT /micropos/1.json
  def update
    respond_to do |format|
      if @micropo.update(micropo_params)
        format.html { redirect_to @micropo, notice: 'Micropo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micropo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropos/1
  # DELETE /micropos/1.json
  def destroy
    @micropo.destroy
    respond_to do |format|
      format.html { redirect_to micropos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropo
      @micropo = Micropo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropo_params
      params.require(:micropo).permit(:content, :user_id)
    end
end
