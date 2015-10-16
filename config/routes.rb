Mlblog::Engine.routes.draw do
  
	# mount Ckeditor::Engine => '/ckeditor'
	
	resources :articles
	resources :categories
	
end