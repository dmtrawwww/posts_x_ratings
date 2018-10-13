class PostsController < ApplicationController
	# POST /create_post
	def create(post_params = {}, login = '') 
		post_params = if post_params.present? then
			post_params
		else 
			{
				title: params[:title],
				content: params[:content],
				ip: request.remote_ip
			}
		end

		if post_params[:title].present? and post_params[:content].present? then
			login = if login.present? then login else params[:login] end 
			user = User.find_or_create_by(login: login)
			post_params[:user_id] = user.id

			@post = Post.create!(post_params)

			render json: @post, status: 200
		else 
			errors = {
			  "errors": [
			    {
			      "title": "Empty title or content",
			      "detail": "Validation failed: Title and content can't be empty."
			    }
			  ],
			  "status": 422
			}

			render json: errors, status: 422
		end
	end

	# GET /list_posts
	def list
		posts = Post.all.sort_by(&:current_rating).first(10).reverse.to_json(except: [:created_at, :updated_at, :ip, :user_id, :id])

		render json: posts, status: :ok
	end
end
