class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[show edit update destroy]

  def index
    @portfolio_items = Portfolio.ruby_on_rails
  end

  def show
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
      redirect_to portfolio_show_url(@portfolio_item), notice: 'Portfolio item was updated.'
    else
      render :edit
    end
  end

  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_path, notice: 'Portfolio item was destroyed.'
  end

  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
