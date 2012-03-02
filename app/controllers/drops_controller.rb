class DropsController < ApplicationController
  # GET /drops
  # GET /drops.json
  def index
    @drops = Drop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drops }
    end
  end

  # GET /drops/1
  # GET /drops/1.json
  def show
    @drop = Drop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drop }
    end
  end

  # GET /drops/new
  # GET /drops/new.json
  def new
    @drop = Drop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drop }
    end
  end

  # GET /drops/1/edit
  def edit
    @drop = Drop.find(params[:id])
  end

  # POST /drops
  # POST /drops.json
  def create
    @drop = Drop.new(params[:drop])

    respond_to do |format|
      if @drop.save
        format.html { redirect_to @drop, notice: 'Drop was successfully created.' }
        format.json { render json: @drop, status: :created, location: @drop }
      else
        format.html { render action: "new" }
        format.json { render json: @drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drops/1
  # PUT /drops/1.json
  def update
    @drop = Drop.find(params[:id])

    respond_to do |format|
      if @drop.update_attributes(params[:drop])
        format.html { redirect_to @drop, notice: 'Drop was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drops/1
  # DELETE /drops/1.json
  def destroy
    @drop = Drop.find(params[:id])
    @drop.destroy

    respond_to do |format|
      format.html { redirect_to drops_url }
      format.json { head :ok }
    end
  end
end
