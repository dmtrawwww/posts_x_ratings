class UsersController < ApplicationController
	# GET /authors_by_ip
	def group_by_publication_ip
		logins_grouped_by_ip_full = {}
		Post.all.group_by(&:ip).each do |ip, posts| 

			posts.each do |p| 
				unless (logins_grouped_by_ip_full[ip] || []).include?(p.user.login)
					(logins_grouped_by_ip_full[ip] ||= []) << p.user.login
				end 
			end
			
		end	

		logins_grouped_by_ip = logins_grouped_by_ip_full.reject { |ip, logins| logins.size < 2 }

		ips_and_logins = []
		logins_grouped_by_ip.each { |ip, logins| ips_and_logins << { ip: ip, logins: logins } }

		render json: ips_and_logins, status: :ok
	end
end