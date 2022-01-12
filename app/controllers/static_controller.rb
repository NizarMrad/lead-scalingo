class StaticController < ApplicationController
  before_action :set_contentweb, only: %i[show edit update destroy]
  before_action :set_paid_user

  # Stripe.api_key=Rails.application.credentials.stripe[:secret_key]
  before_action :authenticate_user!, except: %i[contact product]

  def contact; end

  def admin_dashboard
     if params[:secret_number] == 'secret'
      sign(true)
     else
      sign(false)
     end
    
  end

  def product; end

  def dashboard
    client = current_user
    @contentwebs = Contentweb.where(user: client)
    @comments = Comment.where(user: client)
  end

  private

  def set_paid_user
    # if current_user
    #   stripe_array=[]
    #   stripe_list= Stripe::Customer.list.data
    #   stripe_list.each do |customer|
    #       stripe_array.push customer.email
    #   end
    #   unless stripe_array.include? current_user.email
    #     flash[:error] = "Vous devez effectuer un paiement avant d'acceder au dash board"
    #     redirect_to root_path
    #   end
    #  end
  end
end
