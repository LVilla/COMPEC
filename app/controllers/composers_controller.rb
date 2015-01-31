class ComposersController < ApplicationController
	def index
		@composers = Composer.all
	end
	def show
		@composer = Composer.find(params[:id])
	end
	def new
		@composer = Composer.new
	end
	def edit
		@composer = Composer.find(params[:id])
	end
	def create
		@composer = Composer.new(composer_params)
		
		if @composer.save
			redirect_to @composer
		else
			render 'new'
		end
	end
	def update
		@composer = Composer.find(params[:id])

		if @composer.update(composer_params)
			redirect_to @composer
		else
			render 'edit'
		end
	end
	def destroy
		@composer = Composer.find(params[:id])
		@composer.destroy
		redirect_to composers_path
	end
	private
		def composer_params
			params.require(:composer).permit(:nombre, :apellido, :lugar_nacimiento, :fecha_nacimiento)
		end
end
