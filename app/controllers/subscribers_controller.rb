class SubscribersController < ApplicationController

  def create
    subscriber = Subscriber.new(subscriber_params)
    if subscriber.save
      flash[:notice] = "Welcome to the mailing list."
    else
      flash[:error] = subscriber.errors.full_messages.join("\n")
    end
    redirect_to :root
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
