class BuyersController < ApplicationController


  def create
    @buyer = Buyer.new(buyer_params)
    $addresser = @buyer

    if @buyer.save
      $addresser = nil
      BuyerMailer.buyer_welcome_email(@buyer).deliver
      $event_name = nil
      redirect_to buyers_path
    else
      redirect_to product_path($product_id)
    end
  end


  def buyer_params
    params.require(:buyer).permit(:name)
  end


end
