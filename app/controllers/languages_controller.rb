class LanguagesController < ApplicationController
	def index

	end 

	def create
		Language.create(language: params[:language])
		redirect_to votes_path
	end 

	def destroy
		language = Language.find(params[:id])
		language.destroy
		redirect_to votes_path
	end
end
