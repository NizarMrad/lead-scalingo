class ContentwebsController < ApplicationController
  before_action :set_contentweb, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /contentwebs or /contentwebs.json
  def index
    @user = current_user
    @contentwebs = Contentweb.all
  end

  # GET /contentwebs/1 or /contentwebs/1.json
  def show
    @user = current_user
    @contentweb = @user.contentweb
  end

  # GET /contentwebs/new
  def new
    @contentweb = Contentweb.new
  end

  # GET /contentwebs/1/edit
  def edit; end

  # POST /contentwebs or /contentwebs.json
  def create
    @contentweb = Contentweb.new(contentweb_params)

    respond_to do |format|
      if @contentweb.save
        format.html do
          redirect_to @contentweb,
                      notice: 'Contentweb was successfully created.'
        end
        format.json { render :show, status: :created, location: @contentweb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @contentweb.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /contentwebs/1 or /contentwebs/1.json
  def update
    respond_to do |format|
      if @contentweb.update(contentweb_params)
        format.html do
          redirect_to @contentweb,
                      notice: 'Contentweb was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @contentweb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @contentweb.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /contentwebs/1 or /contentwebs/1.json
  def destroy
    @contentweb.destroy
    respond_to do |format|
      format.html do
        redirect_to contentwebs_url,
                    notice: 'Contentweb was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contentweb
    @contentweb = Contentweb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def contentweb_params
    params
      .require(:contentweb)
      .permit(
        :header,
        :header2,
        :header3,
        :header4,
        :contentmain,
        :content2,
        :content3,
        :content4,
        :content5,
        :content6,
        :user_id,
        :nom_site,
        :titre_hero,
        :slogan,
        :descrp_title_1,
        :descrp_title_2,
        :descrp_title_3,
        :descrp_title_4,
        :descrp_sub_title_1,
        :descrp_sub_title_2,
        :descrp_sub_title_3,
        :descrp_sub_title_4,
        :descrp_text_1,
        :descrp_text_2,
        :descrp_text_3,
        :descrp_text_4,
        :header5,
        :header6,
        :sub_header1,
        :sub_header2,
        :sub_header3,
        :sub_header4,
        :sub_header5,
        :sub_header6
      )
  end
end
