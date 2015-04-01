Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '375017552676709', '129b0536c7efedb3b5806600af40c0fa',
           :scope => 'user_about_me, manage_pages'
end