class Admin::DiscountsController < ApplicationController
  def index
    @view_model = DiscountsListViewModel.get_all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
