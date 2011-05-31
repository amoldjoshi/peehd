class WeeklyaddsController < ApplicationController
  # GET /weeklyadds
  # GET /weeklyadds.xml
  
  #before_filter :login_as_admim_required, :only => [:new, :edit, :create, :update, :destroy ]
  
  def index
    @weeklyadds = Weeklyadd.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weeklyadds }
    end
  end

  # GET /weeklyadds/1
  # GET /weeklyadds/1.xml
  def show
    @weeklyadd = Weeklyadd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weeklyadd }
    end
  end

  # GET /weeklyadds/new
  # GET /weeklyadds/new.xml
  def new
    @weeklyadd = Weeklyadd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weeklyadd }
    end
  end

  # GET /weeklyadds/1/edit
  def edit
    @weeklyadd = Weeklyadd.find(params[:id])
  end

  # POST /weeklyadds
  # POST /weeklyadds.xml
  def create
    @weeklyadd = Weeklyadd.new(params[:weeklyadd])

    respond_to do |format|
      if @weeklyadd.save
        format.html { redirect_to(@weeklyadd, :notice => 'Weeklyadd was successfully created.') }
        format.xml  { render :xml => @weeklyadd, :status => :created, :location => @weeklyadd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weeklyadd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weeklyadds/1
  # PUT /weeklyadds/1.xml
  def update
    @weeklyadd = Weeklyadd.find(params[:id])

    respond_to do |format|
      if @weeklyadd.update_attributes(params[:weeklyadd])
        format.html { redirect_to(@weeklyadd, :notice => 'Weeklyadd was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weeklyadd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weeklyadds/1
  # DELETE /weeklyadds/1.xml
  def destroy
    @weeklyadd = Weeklyadd.find(params[:id])
    @weeklyadd.destroy

    respond_to do |format|
      format.html { redirect_to(weeklyadds_url) }
      format.xml  { head :ok }
    end
  end
end
