class FavCartsController < ApplicationController
  # GET /fav_carts
  # GET /fav_carts.json
  def index
    @fav_carts = FavCart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fav_carts }
    end
  end

  # GET /fav_carts/1
  # GET /fav_carts/1.json
  def show
    @fav_cart = FavCart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fav_cart }
    end
  end

  # GET /fav_carts/new
  # GET /fav_carts/new.json
  def new
    @fav_cart = FavCart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fav_cart }
    end
  end

  # GET /fav_carts/1/edit
  def edit
    @fav_cart = FavCart.find(params[:id])
  end

  # POST /fav_carts
  # POST /fav_carts.json
  def create
    @fav_cart = FavCart.new(params[:fav_cart])

    respond_to do |format|
      if @fav_cart.save
        format.html { redirect_to @fav_cart, notice: 'Fav cart was successfully created.' }
        format.json { render json: @fav_cart, status: :created, location: @fav_cart }
      else
        format.html { render action: "new" }
        format.json { render json: @fav_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fav_carts/1
  # PUT /fav_carts/1.json
  def update
    @fav_cart = FavCart.find(params[:id])

    respond_to do |format|
      if @fav_cart.update_attributes(params[:fav_cart])
        format.html { redirect_to @fav_cart, notice: 'Fav cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fav_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fav_carts/1
  # DELETE /fav_carts/1.json
  def destroy
    @fav_cart = FavCart.find(params[:id])
    @fav_cart.destroy

    respond_to do |format|
      format.html { redirect_to fav_carts_url }
      format.json { head :no_content }
    end
  end
end
