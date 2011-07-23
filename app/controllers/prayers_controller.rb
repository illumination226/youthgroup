class PrayersController < ApplicationController
  # GET /prayers
  # GET /prayers.xml
  def index
    @prayers = Prayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prayers }
    end
  end

  # GET /prayers/1
  # GET /prayers/1.xml
  def show
    @prayer = Prayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prayer }
    end
  end

  # GET /prayers/new
  # GET /prayers/new.xml
  def new
    @prayer = Prayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prayer }
    end
  end

  # GET /prayers/1/edit
  def edit
    @prayer = Prayer.find(params[:id])
  end

  # POST /prayers
  # POST /prayers.xml
  def create
    @prayer = Prayer.new(params[:prayer])

    respond_to do |format|
      if @prayer.save
        format.html { redirect_to(@prayer, :notice => 'Prayer was successfully created.') }
        format.xml  { render :xml => @prayer, :status => :created, :location => @prayer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prayers/1
  # PUT /prayers/1.xml
  def update
    @prayer = Prayer.find(params[:id])

    respond_to do |format|
      if @prayer.update_attributes(params[:prayer])
        format.html { redirect_to(@prayer, :notice => 'Prayer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prayers/1
  # DELETE /prayers/1.xml
  def destroy
    @prayer = Prayer.find(params[:id])
    @prayer.destroy

    respond_to do |format|
      format.html { redirect_to(prayers_url) }
      format.xml  { head :ok }
    end
  end
end
