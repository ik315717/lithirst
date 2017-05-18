class DealsController < ApplicationController

  def index
    @venue = Venue.find(params[:venue_id])
    @deals = @venue.deals.all
  end 

  # GET /venues/1
  # GET /venues/1.json
  def show
    @venue = Venue.find(params[:venue_id])
    @deal = @venue.deals.find(params[:id])
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @deal = @venue.deals.new
  end
  
  def edit
    @venue = Venue.find(params[:venue_id])
    @deal = @venue.deals.find(params[:id])
  end

  # POST /venues
  # POST /venues.json
  def create
    @venue = Venue.find(params[:venue_id])
    @deal = @venue.deals.new(deal_params)

    respond_to do |format|
      if @deal.save
        format.html { redirect_to venue_deal_path(@venue, @deal), notice: 'Deal was successfully created.' }
        format.json { render :show, status: :created, location: @deal }
      else
        format.html { render :new }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venues/1
  # PATCH/PUT /venues/1.json
  def update
    @venue = Venue.find(params[:venue_id])
    @deal = @venue.deals.find(params[:id])
    respond_to do |format|
      if @deal.update(deal_params)
        format.html { redirect_to venue_deal_path(@venue, @deal), notice: 'Deal was successfully updated.' }
        format.json { render :show, status: :ok, location: @deal }
      else
        format.html { render :edit }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue = Venue.find(params[:venue_id])
    @deal = @venue.deals.find(params[:id])
    @deal.destroy
    respond_to do |format|
      format.html { redirect_to venue_deals_path(@venue.id), notice: 'Deal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def deal_params
    params.require(:deal).permit(:title, :description, :expiration)
  end

end
