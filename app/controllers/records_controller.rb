class RecordsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @records = Record.includes(:user).all.order("created_at DESC")
  end

  def new
  end

  def create
    Record.create(image: record_params[:image], text: record_params[:text], user_id: current_user.id)
  end

  def destroy
    record = Record.find(id_params[:id])
    if record.user_id == current_user.id
      record.destroy
    end
  end

  private
  def record_params
    params.permit(:image, :text)
  end

  def id_params
    params.permit(:id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
