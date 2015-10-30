class VotesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	require 'net/http'

	def index
		@languages = Language.all

		

	end 

	def ajax
		@languages = Language.all

		@languages = @languages.to_json

		render json: @languages


	end 

	def create
		language = Language.find(params[:language_id])
		language.votes.create()

		uri = URI('http://localhost:8000/')
		req = Net::HTTP::Post.new(uri)

		votes = Language.find(params[:language_id]).votes.count

		req.set_form_data(votes)
		res = Net::HTTP.start(uri.hostname, uri.port) do |http|
 		http.request(req)

		end


	end 


end
