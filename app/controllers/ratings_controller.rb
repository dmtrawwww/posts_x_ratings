class RatingsController < ApplicationController
	# POST /rate_post
	def create(rating_params = {})
		rating_params = rating_params.present? || {
			rating: params[:rating],
			post_id: params[:post_id]
		}
		rating_params[:rating] = if rating_params[:rating].to_f == 0 then 5 else rating_params[:rating] end

		if Post.exists?(id: rating_params[:post_id]) 
			rating = Rating.create(rating_params)

			current_post_rating = Post.find(rating_params[:post_id]).current_rating

			render json: {rating: current_post_rating}, status: 200
		else 
			errors = {
			  "errors": [
			    {
			      "title": "Post doesn't exist",
			      "detail": "Couldn't find Post with 'id'=#{rating_params[:post_id]}."
			    }
			  ],
			  "status": 404
			}

			render json: errors, status: 404
		end
	end
end
