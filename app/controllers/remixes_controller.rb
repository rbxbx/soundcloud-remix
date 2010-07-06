class RemixesController < ApplicationController

  before_filter :login_required, :except => [:index, :show]

  def index
    @remixes = Remix.paginate :page => params[:page], :order => params[:sort] || "created_at DESC"
  end

  def show
    @remix = Remix.find(params[:id])
    @page_title = "#{@remix.user.name} - #{@remix.title}"
  end

  def new
    @remix = Remix.new
    @page_title = "Upload Your Remix"
  end

  def create

    @remix = Remix.new(params[:remix])

    if @remix.save
      
      new_track = current_user.soundcloud.Track.new
      new_track.title = @remix.title
      new_track.asset_data = @remix.asset_data
      new_track.artwork_data = File.new("#{RAILS_ROOT}/public/images/artwork.jpg")
      new_track.description = SETTINGS["remix"]["description"]
      new_track.tag_list = SETTINGS["remix"]["tag_list"]
      new_track.track_type = "remix"
      
      if new_track.save
        
        new_track.purchase_url = vote_url(@remix.id)
        new_track.save
        
        @remix.track_id = new_track.id
        @remix.save
        
        puts current_user.token.put("/groups/#{SETTINGS["group_id"]}/contributions/#{new_track.id}")
      
        flash[:notice] = 'Remix was successfully uploaded. It will show up here once created on SoundCloud.'
        redirect_to remix_url(@remix)
        
      end
      
    else
      render :action => "new"
    end
    
  end
  
  def status
    
    remix = Remix.find(params[:id])
    
    if remix.available?
    
      render :update do |page|
        page << "check_var = false;"
        page.replace_html 'processor', :partial => "player", :locals => {:remix => remix}
        page.hide 'notice'
      end
    
    else
      
      render :nothing => true
      
    end
    
  end

end
