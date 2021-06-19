class RequestsController < ApplicationController
  def get_denominations
    amount = params[:input_amount].to_i
    data, status, message = DenominationGenerator.new(amount).make_change
    render json: { status: status, message: message, data: data }, status: status
  end
end