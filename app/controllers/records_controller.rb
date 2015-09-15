class RecordsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @records = Record.all.order("created_at DESC")
  end

  def new
  end

  def create
    Record.create(record_params)
  end

  private
  def record_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
