class RoundsController < ApplicationController
  def new
    @round = Round.new(params[:quiz_id])
  end

  private

  def set_round
    @round = Round.find(params[:id])
  end
end
