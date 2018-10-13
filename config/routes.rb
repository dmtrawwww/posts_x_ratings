Rails.application.routes.draw do
	post 'create_post', to: 'posts#create'
	post 'rate_post', to: 'ratings#create'
	get 'list_posts', to: 'posts#list'
	get 'authors_by_ip', to: 'users#group_by_publication_ip'
end
