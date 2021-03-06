class FavouritesController < ApplicationController
  # GET /favourites
  # GET /favourites.json
  
  before_filter :authenticate_user!
  
  def index
    @favourites = Favourite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favourites }
    end
  end

  # GET /favourites/1
  # GET /favourites/1.json
  def show
    @favourite = Favourite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @favourite }
    end
  end

  # GET /favourites/new
  # GET /favourites/new.json
  def new
    @favourite = Favourite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @favourite }
    end
  end

  # GET /favourites/1/edit
  def edit
    @favourite = Favourite.find(params[:id])
  end

  # POST /favourites
  # POST /favourites.json
  def create
    #@favourite = Favourite.new(params[:favourite]) 
    
    project = Project.find(params[:project_id])
    
    if Favourite.find_by_project_id_and_user_id(project, current_user)
      respond_to do |format|
        format.html { redirect_to catalog_url, notice: 'You already faved this project.' }
        format.json { head :no_content }
      end
    else
      @favourite = current_user.favourites.build(project: project) 
      respond_to do |format|
        if @favourite.save
          format.html { redirect_to catalog_url, notice: 'Favourite was successfully created.' }
          format.json { render json: @favourite, status: :created, location: @favourite }
        else
          format.html { render action: "new" }
          format.json { render json: @favourite.errors, status: :unprocessable_entity }
        end
      end
    end  
  end

  # PUT /favourites/1
  # PUT /favourites/1.json
  def update
    @favourite = Favourite.find(params[:id])

    respond_to do |format|
      if @favourite.update_attributes(params[:favourite])
        format.html { redirect_to @favourite, notice: 'Favourite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy

    respond_to do |format|
      format.html { redirect_to favourites_url }
      format.json { head :no_content }
    end
  end
end
