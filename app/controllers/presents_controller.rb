class PresentsController < ApplicationController
  def new
    @present = Present.new((params[:present] || {}).slice(:destination))
  end
  def create
    @present = Present.new params[:present]
  end
end
