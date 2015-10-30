class LanguageController < ApplicationController
	def index
		
	end 

	def create
		Language.create(language: params:language)
		redirect_to votes_path
	end 

end
