ActionController::Routing::Routes.draw do |map|
  map.index           '/index.html',          :controller => 'pages', :action => 'home'
  map.contact         '/contact',             :controller => 'pages', :action => 'contact'
  map.emergency       '/emergency',           :controller => 'pages', :action => 'emergency'
  map.promotion       '/promotions',          :controller => 'pages', :action => 'promotion'
  map.news            '/news',                :controller => 'pages', :action => 'news'
  map.new_client      '/new-client',          :controller => 'pages', :action => 'new_client'
  map.pharmacy        '/online-pharmacy',     :controller => 'pages', :action => 'pharmacy'
  
  # Veterinary Service
  map.service           '/veterinary-services',                            :controller => 'pages', :action => 'service'
  map.examination       '/veterinary-services/comprehensive-examinations', :controller => 'pages', :action => 'examination'
  map.surgery           '/veterinary-services/veterinary-surgery',         :controller => 'pages', :action => 'surgery'
  map.internal_medicine '/veterinary-services/internal-medicine',          :controller => 'pages', :action => 'internal_medicine'
  map.dental            '/veterinary-services/pet-dental-care',            :controller => 'pages', :action => 'dental'
  map.pain_management   '/veterinary-services/pain-management',            :controller => 'pages', :action => 'pain_management'
  map.diagnostics       '/veterinary-services/veterinary-diagnostics',     :controller => 'pages', :action => 'diagnostics'
    
  # Pet Health
  map.health        '/pet-health',                    :controller => 'pages', :action => 'health'
  map.puppy_kitten  '/pet-health/puppy-kitten-care',  :controller => 'pages', :action => 'puppy_kitten'
  map.vaccination   '/pet-health/vaccinations',       :controller => 'pages', :action => 'vaccination'
  map.senior        '/pet-health/senior-pet-care',    :controller => 'pages', :action => 'senior'
  map.articles      '/pet-health/pet-care-articles',  :controller => 'pages', :action => 'articles'
  map.videos        '/pet-health/pet-care-videos',    :controller => 'pages', :action => 'videos'
  
  # Pet Care Resources
  map.pet_resource  '/pet-care-resources',                :controller => 'pages', :action => 'pet_resource'
  map.helpful_links '/pet-care-resources/helpful-links',  :controller => 'pages', :action => 'helpful_links'

  # Payment Options
  map.payment       '/payment-options',                   :controller => 'pages', :action => 'payment'
  map.care_credit   '/payment-options/care-credit',       :controller => 'pages', :action => 'care_credit'
  map.payment_forms '/payment-options/forms-of-payment',  :controller => 'pages', :action => 'payment_forms'
  map.pet_insurance '/payment-options/pet-insurance',     :controller => 'pages', :action => 'pet_insurance'
  
  # About Us
  map.about     '/about-us',                    :controller => 'pages', :action => 'about'
  map.vets      '/about-us/veterinarians',      :controller => 'pages', :action => 'vets'
  map.staff     '/about-us/veterinarian-staff', :controller => 'pages', :action => 'staff'
  map.history   '/about-us/history',            :controller => 'pages', :action => 'history'
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => 'pages', :action => 'home'

  # See how all your routes lay out with 'rake routes'

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #  map.connect ':controller/:action/:id'
  #  map.connect ':controller/:action/:id.:format'
end
