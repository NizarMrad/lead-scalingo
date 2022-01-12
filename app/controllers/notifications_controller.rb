class NotificationsController < ApplicationController
  before_action :set_notification, only: %i[show edit update destroy]
  def index
    @notifications = Notification.all
    @notifications_valid = Notification.where(read: false)
    redirect_to :index
  end

  def update
    respond_to do |format|
      if @notification.update(read: true)
        format.html do
          redirect_to :notifications,
                      notice: "Vous n'avez aucune nouvelle notification."
        end
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_notification
    @notification = Notification.find(params[:id])
  end
end
