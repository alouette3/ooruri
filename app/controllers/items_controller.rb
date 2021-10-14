class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_item, only: [:show, :edit, :update ,:destroy]
  before_action :move_to_index, only: [:edit, :update ,:destroy]
  # before_action :move_to_root, only: :edit
  # before_action :search_item, only: [:index, :search]

  def index
    @items = Item.includes(:user).order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show  
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  # def search
  #   @items = Item.search(params[:keyword])
  # end

  # def search
    # @results = @i.result.includes(:category)  # 検索条件にマッチした商品の情報を取得
  # end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :primary_category, :secondary_category, :delivery_area, :delivery_day, :delivery_charge, :image).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.id == @item.user_id
  end

  # def move_to_root
  #   redirect_to root_path if @item.purchase_history.present?
  # end

  # def search_item
    # @i = Item.ransack(params[:q])  # 検索オブジェクトを生成
  # end

  # def set_item_column
  #   @item_face_shape = Item.select("face_shape").distinct
  #   @item_size = Item.select("size").distinct
  #   @item_coordinate = Item.select("coordinate").distinct
  # end

end
