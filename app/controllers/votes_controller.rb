class VotesController < ApplicationController

  def create
    
    @remix = Remix.find(params[:id])
    @vote = Vote.new(:remix_id => @remix.id, :ip_address => request.remote_ip)

    respond_to do |format|
      
      if @vote.save
        
        success = 'Thanks for voting!'
                
        format.html {
          flash[:notice] = success
          redirect_to @remix
        }
        format.js{
          render :update do |page|
            page.alert success
          end
        }
        
      else
        
        error = 'You have already voted on this remix.'
        
        format.html { 
          flash[:notice] = error
          redirect_to @remix
        }
        format.js{
          render :update do |page|
            page.alert error
          end
        }
        
      end
      
    end
    
  end
  
end
