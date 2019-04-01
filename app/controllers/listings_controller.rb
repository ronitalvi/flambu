class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
    @item = Item.find(params[:item_id])


  end

  # GET /listings/1/edit
  def edit

  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.item_id = params[:item_id]

    if @listing.save!
      redirect_to listing_path(@listing)

    else
      redirect_to root_path
      #render :new


    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update

    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render :edit

    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    redirect_to listings_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_listing
    @listing = Listing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def listing_params
    params.require(:listing).permit(:title, :item_id, :is_available, :sale_price, :price_per_time, :time_unit_id, :listing_type_id, :auction_begin_price)
  end
end
