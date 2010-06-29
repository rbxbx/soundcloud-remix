class RemixesController < ApplicationController

  before_filter :login_required, :except => [:index, :show]

  def index

    @remixes = Remix.all

    respond_to do |format|
      format.html
      #format.xml  { render :xml => @remixes }
    end
    
  end

  def show
    @remix = Remix.find(params[:id])
  end

  def new
    @remix = Remix.new
  end

  def edit
    # add redirect to soundcloud edit page...
  end

  def create

    @remix = Remix.new(params[:remix])

    if @remix.save
      
      new_track = current_user.soundcloud.Track.new
      new_track.title = @remix.title
      new_track.asset_data = @remix.asset_data
      new_track.artwork_data = File.new("#{RAILS_ROOT}/public/images/cover.jpg")
      new_track.description = "RJD2 Remix Competition Entry"
      new_track.purchase_url = remix_url(@remix)
      new_track.sharing = "public"
      new_track.tag_list = "rjd2 remix competition"
      new_track.track_type = "remix"
      
      if new_track.save
        
        @remix.track_id = new_track.id
        @remix.save
        
        current_user.token.put("/groups/10035/contributions/#{new_track.id}")
      
        flash[:notice] = 'Remix was successfully created.'
        redirect_to(@remix)
        
      end
      
    else
      render :action => "new"
    end
    
  end

end