class VotesController < ApplicationController

  def create
    
    @remix = Remix.find(params[:id])
    @vote = Vote.new(:remix_id => @remix.id, :ip_address => request.remote_ip)
    
    # add JS also...

    respond_to do |format|
      
      if @vote.save
        
        flash[:notice] = 'Thanks for voting!'
        format.html { redirect_to @remix }
        format.xml  { render :xml => @vote, :status => :created, :location => @vote }
        
      else
        
        flash[:notice] = 'You have already voted on this remix.'
        format.html { redirect_to @remix }
        format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
        
      end
      
    end
    
  end
  
end
