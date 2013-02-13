class ExhibitorCategoriesController < ApplicationController
  # GET /exhibitor_categories
  # GET /exhibitor_categories.json
  def index
    @exhibitor_categories = ExhibitorCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exhibitor_categories }
    end
  end

  # GET /exhibitor_categories/1
  # GET /exhibitor_categories/1.json
  def show
    @exhibitor_category = ExhibitorCategory.find(params[:id])
    @exhibitorsincat = @exhibitor_category.exhibitors

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exhibitor_category }
    end
  end

  # GET /exhibitor_categories/new
  # GET /exhibitor_categories/new.json
  def new
    @exhibitor_category = ExhibitorCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exhibitor_category }
    end
  end

  # GET /exhibitor_categories/1/edit
  def edit
    @exhibitor_category = ExhibitorCategory.find(params[:id])
  end

  # POST /exhibitor_categories
  # POST /exhibitor_categories.json
  def create
    @exhibitor_category = ExhibitorCategory.new(params[:exhibitor_category])

    respond_to do |format|
      if @exhibitor_category.save
        format.html { redirect_to @exhibitor_category, notice: 'Exhibitor category was successfully created.' }
        format.json { render json: @exhibitor_category, status: :created, location: @exhibitor_category }
      else
        format.html { render action: "new" }
        format.json { render json: @exhibitor_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exhibitor_categories/1
  # PUT /exhibitor_categories/1.json
  def update
    @exhibitor_category = ExhibitorCategory.find(params[:id])

    respond_to do |format|
      if @exhibitor_category.update_attributes(params[:exhibitor_category])
        format.html { redirect_to @exhibitor_category, notice: 'Exhibitor category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exhibitor_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitor_categories/1
  # DELETE /exhibitor_categories/1.json
  def destroy
    @exhibitor_category = ExhibitorCategory.find(params[:id])
    @exhibitor_category.destroy

    respond_to do |format|
      format.html { redirect_to exhibitor_categories_url }
      format.json { head :no_content }
    end
  end
end
