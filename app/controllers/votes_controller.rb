class VotesController < ApplicationController

  def create
    
    @vote = Vote.new(:remix_id => params[:id], :ip_address => request.remote_ip)

    respond_to do |format|
      if @vote.save
        flash[:notice] = 'Vote was successfully created.'
        format.html { redirect_to(@vote) }
        format.xml  { render :xml => @vote, :status => :created, :location => @vote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
      end
    end
    
  end
  
end
