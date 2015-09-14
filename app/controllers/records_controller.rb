class RecordsController < ApplicationController
  def index
    @records = Record.all
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
end
