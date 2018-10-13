require 'rails_helper'

RSpec.describe 'Application API', type: :request do
	# initialize test data 
  let!(:users) { create_list(:user, 10) }
  let!(:posts) { create_list(:post, 10) }
  let!(:post_id) { posts.first.id }

	describe 'POST /create_post' do
		context 'when the request is valid' do
			valid_attributes = { title: "Simple post title", content: "Content was here...", login: "exoticauthor", ip: "1.1.1.1" } 

			before { post '/create_post', params: valid_attributes } 
			
      it 'creates a post' do
        expect(json['title']).to eq("Simple post title")
        expect(json['content']).to eq("Content was here...")
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
		end

		context 'when the request is invalid' do
			invalid_attributes = { title: "We will get errors with this", ip: "1.1.1.1" } 

			before { post '/create_post', params: invalid_attributes } 
			
      it 'returns a validation failure message' do
      	expect(response.body).to match(/Validation failed: Title and content can't be empty/)
      end

      it 'returns status code 422' do
      	expect(response).to have_http_status(422)
      end
		end
	end

	describe 'POST /rate_post' do
		context 'when the request is normal' do
			before { post '/rate_post', params: { rating: 1, post_id: post_id } } 

			it 'rates the post and successfully returns correct rating' do
				expect(json['rating']).to eq(1)
			end
		end

		context 'when the request is strange (wrong rating)' do 
			before { post '/rate_post', params: { rating: 'definitely not rating', post_id: post_id } } 

			it 'rates the post and returns rating anyway' do 
				expect(json['rating']).to be >= 0
				expect(json['rating']).to be <= 5
			end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
		end

		context 'when the request have wrong post_id' do 
			before { post '/rate_post', params: { rating: 5, post_id: 0 } } 

      it 'returns a "post not found" error message' do
      	expect(response.body).to match(/Post doesn't exist"/)
      end

      it 'returns status code 404' do
      	expect(response).to have_http_status(404)
      end
		end
	end

	describe 'GET /list_posts' do
		before { get '/list_posts' }

		it 'returns 10 posts (in our case)' do 
			expect(json.size).to eq(10)
			
			expect(json[0]['title']).not_to be_empty 
			expect(json[0]['content']).not_to be_empty 

			expect(json[4]['title']).not_to be_empty 
			expect(json[4]['content']).not_to be_empty 
		end
	end

	describe 'GET /authors_by_ip' do
		before { get '/authors_by_ip' }

		it 'returns pairs ip + logins' do
			ip_format = /[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/

			expect(json.size).to be > 1
			
			expect(json[0]['ip']).to match(ip_format)
			expect(json[1]['ip']).to match(ip_format)
			
			expect(json[0]['logins'].size).to be >= 2
		end
	end
end