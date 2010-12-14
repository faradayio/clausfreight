class PresentsController < ApplicationController
  def new
    @present = Present.new
  end
  def create
    @present = Present.new params[:present]
  end
end
