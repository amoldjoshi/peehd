class AdvertisesController < ApplicationController
  # GET /advertises
  # GET /advertises.xml
  def index
    @advertises = Advertise.all
    @title = "All Advertises"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @advertises }
    end
  end

  # GET /advertises/1
  # GET /advertises/1.xml
  def show
    @advertise = Advertise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @advertise }
    end
  end

  # GET /advertises/new
  # GET /advertises/new.xml
  def new
    @advertise = Advertise.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @advertise }
    end
  end

  # GET /advertises/1/edit
  def edit
    @advertise = Advertise.find(params[:id])
  end

  # POST /advertises
  # POST /advertises.xml
  def create
    @advertise = Advertise.new(params[:advertise])

    respond_to do |format|
      if @advertise.save
        format.html { redirect_to(@advertise, :notice => 'Advertise was successfully created.') }
        format.xml  { render :xml => @advertise, :status => :created, :location => @advertise }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advertise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advertises/1
  # PUT /advertises/1.xml
  def update
    @advertise = Advertise.find(params[:id])

    respond_to do |format|
      if @advertise.update_attributes(params[:advertise])
        format.html { redirect_to(@advertise, :notice => 'Advertise was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @advertise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /advertises/1
  # DELETE /advertises/1.xml
  def destroy
    @advertise = Advertise.find(params[:id])
    @advertise.destroy

    respond_to do |format|
      format.html { redirect_to(advertises_url) }
      format.xml  { head :ok }
    end
  end
end
