class VotesController < ApplicationController

  def create
    
    @remix = Remix.find(params[:id])
    @vote = Vote.new(:remix_id => @remix.id, :ip_address => request.remote_ip)

    respond_to do |format|
      
      if @vote.save
        
        flash[:notice] = 'Thanks for voting!'
        format.html { redirect_to @remix }
        format.js{
          
        }
        
      else
        
        flash[:notice] = 'You have already voted on this remix.'
        format.html { redirect_to @remix }
        format.js{
          update_page do |page|
            page.alert = flash[:notice]
          end
        }
        
      end
      
    end
    
  end
  
end
