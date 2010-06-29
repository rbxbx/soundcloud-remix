class RemixesController < ApplicationController
  # GET /remixes
  # GET /remixes.xml
  def index
    @remixes = Remix.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @remixes }
    end
  end

  # GET /remixes/1
  # GET /remixes/1.xml
  def show
    @remix = Remix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @remix }
    end
  end

  # GET /remixes/new
  # GET /remixes/new.xml
  def new
    @remix = Remix.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @remix }
    end
  end

  # GET /remixes/1/edit
  def edit
    @remix = Remix.find(params[:id])
  end

  # POST /remixes
  # POST /remixes.xml
  def create
    @remix = Remix.new(params[:remix])

    respond_to do |format|
      if @remix.save
        flash[:notice] = 'Remix was successfully created.'
        format.html { redirect_to(@remix) }
        format.xml  { render :xml => @remix, :status => :created, :location => @remix }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @remix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /remixes/1
  # PUT /remixes/1.xml
  def update
    @remix = Remix.find(params[:id])

    respond_to do |format|
      if @remix.update_attributes(params[:remix])
        flash[:notice] = 'Remix was successfully updated.'
        format.html { redirect_to(@remix) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @remix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /remixes/1
  # DELETE /remixes/1.xml
  def destroy
    @remix = Remix.find(params[:id])
    @remix.destroy

    respond_to do |format|
      format.html { redirect_to(remixes_url) }
      format.xml  { head :ok }
    end
  end
end
