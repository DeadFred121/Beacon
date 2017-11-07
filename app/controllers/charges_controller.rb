class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_check
  before_action :amount_to_be_charged
  before_action :set_description

  def new; end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: @amount,
                                      description: @description)
    puts current_user.inspect
    @user_profile = current_user.profile
    @user_profile.pro = true
    @user_profile.save

    render :thanks
    @user = current_user.email
    to_email = @user
    PurchaseMailer.send_transactional_email(to_email).deliver_now
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks; end

  private

  def amount_to_be_charged
    @amount = 500
  end

  def set_description
    @description = 'Beacon Pro Upgrade'
  end

  def user_check
    render json: {}, status: 401 if current_user.profile.pro != false
  end
end
