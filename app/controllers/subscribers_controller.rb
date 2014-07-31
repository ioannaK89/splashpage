class SubscribersController < ApplicationController
skip_before_filter :verify_authenticity_token
  def create
    @subscriber = Subscriber.create subscriber_params

    if @subscriber.save
      flash[:notice] = "Thanks for your subscription!"
      redirect_to thank_you_path
    else
      flash[:notice] = "Oops something went wrong! Please try again"
      redirect_to :back
    end
  end

  def thank_you; end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, :fp)
  end
end
