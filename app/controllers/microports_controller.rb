class MicroportsController < ApplicationController
  # GET /microports
  # GET /microports.json
  def index
    @microports = Microport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microports }
    end
  end

  # GET /microports/1
  # GET /microports/1.json
  def show
    @microport = Microport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microport }
    end
  end

  # GET /microports/new
  # GET /microports/new.json
  def new
    @microport = Microport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microport }
    end
  end

  # GET /microports/1/edit
  def edit
    @microport = Microport.find(params[:id])
  end

  # POST /microports
  # POST /microports.json
  def create
    @microport = Microport.new(params[:microport])

    respond_to do |format|
      if @microport.save
        format.html { redirect_to @microport, notice: 'Microport was successfully created.' }
        format.json { render json: @microport, status: :created, location: @microport }
      else
        format.html { render action: "new" }
        format.json { render json: @microport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microports/1
  # PUT /microports/1.json
  def update
    @microport = Microport.find(params[:id])

    respond_to do |format|
      if @microport.update_attributes(params[:microport])
        format.html { redirect_to @microport, notice: 'Microport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microports/1
  # DELETE /microports/1.json
  def destroy
    @microport = Microport.find(params[:id])
    @microport.destroy

    respond_to do |format|
      format.html { redirect_to microports_url }
      format.json { head :no_content }
    end
  end
end
