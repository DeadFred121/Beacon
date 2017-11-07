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
    current_user.profile.pro = true
    profile.save

    render :thanks
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
    user_profile = current_user.profile
    render json: {}, status: 401 if user_profile.pro != false
  end
end
