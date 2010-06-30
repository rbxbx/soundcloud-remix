module RemixesHelper
  
  def edit_remix_link
    
    if logged_in? && (remix.user_id == current_user.id)

      link_to("Edit", "#{@track["permalink_url"]}/edit", :target => "_blank")

    end
    
  end
  
end
