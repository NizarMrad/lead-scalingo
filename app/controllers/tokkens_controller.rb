class TokkensController < ApplicationController
  before_action :set_tokken, only: %i[show edit update destroy]

  # GET /tokkens or /tokkens.json
  def index
    @tokkens = Tokken.all
  end

  # GET /tokkens/1 or /tokkens/1.json
  def show; end

  # GET /tokkens/new
  def new
    @tokken = Tokken.new
  end

  # GET /tokkens/1/edit
  def edit; end

  # POST /tokkens or /tokkens.json
  def create
    @tokken = Tokken.new(tokken_params)

    respond_to do |format|
      if @tokken.save
        format.html do
          redirect_to @tokken, notice: 'Tokken was successfully created.'
        end
        format.json { render :show, status: :created, location: @tokken }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @tokken.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /tokkens/1 or /tokkens/1.json
  def update
    respond_to do |format|
      if @tokken.update(tokken_params)
        format.html do
          redirect_to @tokken, notice: 'Tokken was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @tokken }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @tokken.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /tokkens/1 or /tokkens/1.json
  def destroy
    @tokken.destroy
    respond_to do |format|
      format.html do
        redirect_to tokkens_url, notice: 'Tokken was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tokken
    @tokken = Tokken.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tokken_params
    params.require(:tokken).permit(:fbTokken, :gTokken, :user_id)
  end
end
