class PresentsController < ApplicationController
  def new
    @present = Present.new
  end
end
