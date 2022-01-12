class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show; end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit; end

  # POST /comments or /comments.json
  def create
    @comment =
    Comment.new(
      user_id: params[:user_id].to_i,
      subject: params[:subject],
      body: params[:body]
    )

    respond_to do |format|
      if @comment.save
        format.html do
          redirect_to root_path, notice: 'Votre message est bien envoyé.'
        end
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @comment.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html do
          redirect_to @comment, notice: 'Comment was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @comment.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html do
        redirect_to comments_url, notice: 'Comment was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.fetch(:comment, {})
  end

  def comment_params_new
    params[:user_id, :body, :subject]
  end
end
