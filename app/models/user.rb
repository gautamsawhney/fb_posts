class User < ActiveRecord::Base
  
  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.name = auth.info.name
  #     user.email = auth.info.email
  #     user.profile_pic = auth.info.image
  #     # user.gender = auth.info.gender
  #     user.verified_user = auth.info.verified
  #     user.oauth_token = auth.credentials.token
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     user.save!
  #   end
  # end

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    var = facebook.get_object("me?fields=name,picture,accounts{posts.limit(50){id},name}")
    
    # retrieve collection fo all your managed pages: returns collection of hashes with page id, name, category, access token and permissions
     # pages = facebook.get_connections('me', 'accounts')
    # get access token for first page
     # first_page_token = var.first['access_token']

     # @page_graph = Koala::Facebook::API.new(first_page_token)
     # @page_graph.get_object('me') # I'm a page
     # @page_graph.get_connection('me', 'feed') # the page's wall

  end


end