Rails.application.routes.draw do
	
	
	
	
  post 'twilio/sms'
	authenticated :user,    lambda { |u| u.yonetici?|| u.ogretmen? } do
		resources :ogrencis,  :except => [:show]
		resources :ogretmen
		resources :devamsizliks
		resources :odevs, :except =>[:index,:show]

	end

	authenticated :user,    lambda { |u| u.ogrenci?|| u.ogretmen? || u.yonetici? } do
		resources :odevs, :only =>[:index,:show]

	end

	resources :ogrencis, only:[:show]



	devise_for :users, :controllers => { :registrations => 'registrations' } 
	authenticated :user, lambda {|u| u.yonetici?} do
		resources :users, except: :create, except: :compose
		post 'create_user' => 'users#create', as: :create_user 
		post 'compose_user' => 'users#compose', as: :compose_user  
		get '/new2/user', action: :new2, controller: 'users'
		post '/users/:id/edit', to: 'users#update'
		patch '/users/:id/edit', to: 'users#update'
		resources :sinifs
	end


	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
