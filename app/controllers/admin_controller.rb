class AdminController < ApplicationController
  def index
    @users = User.all
    @comments = Comment.all
    @notifications = Notification.all
    @notifications_valid = Notification.where(read: false)
    @answer = Answer.new
    @words = Word.all
    @word= Word.find(params[:word_id])
    @user = User.find(params[:user_id])
  end


end
