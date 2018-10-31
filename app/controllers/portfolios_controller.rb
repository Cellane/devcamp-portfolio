class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit update]

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def edit
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    if @portfolio_item.save
      redirect_to @portfolio_item, notice: 'Your portfolio item is now live.'
    else
      render :new
    end
  end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to @portfolio_item, notice: 'Portfolio item was updated.'
    else
      render :edit
    end
  end

  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
