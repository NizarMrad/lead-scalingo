class WordsController < ApplicationController
  protect_from_forgery except: :index
  before_action :authenticate_user!
  before_action :get_current_user
  before_action :user_admin?
  before_action :set_word, only: %i[show edit update destroy]

  # GET /words or /words.json
  def index
    if user_admin?
      @users = User.all
      @words = Word.all
    else
      @user = User.find(params[:user_id])
      @words = Word.where(user_id: current_user)
    end
    
  end

  # GET /words/1 or /words/1.json
  def show
   
  end

  # GET /words/new
  def new
    @user = User.find(params[:user_id])
    @word = Word.new
  end

  # GET /words/1/edit
  def edit; end

  # POST /words or /words.json
  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html do
          redirect_to user_words_path, notice: 'Le post est crée'
        end
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /words/1 or /words/1.json
  def update
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @word.update(word_params)
        format.html do
          redirect_to user_word_path(@user,@word), notice: 'Word was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @word }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1 or /words/1.json
  def destroy
    @user = current_user
    @word.destroy
    respond_to do |format|
      format.html do
        redirect_to user_words_url, notice: 'Word was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_word
    @word = Word.find(params[:id])
  end
  def get_current_user
    @user = current_user
  end

  def user_admin?
    if current_user.email=== 'bonjour@gmail.com'
      return true
    else
      return false
    end
  end

  # Only allow a list of trusted parameters through.
  def word_params
    params.require(:word).permit(:title, :body, :content, :user_id)
  end
end
