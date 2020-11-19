class EmailsController < ApplicationController
  def index
    	@emails = Email.all
  end

def create
  	@email = Email.create(object: Faker::TvShows::GameOfThrones.city, body: Faker::TvShows::GameOfThrones.quote, sender: Faker::TvShows::GameOfThrones.character)
		respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
		end
	end

    def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
      format.html {redirect_to email_path}
      format.js {}
    end
  end

  def update
  @email = Email.find(params[:id])
  if @email.read == true
    @email.read=false
  else
    @email.read = true
  end
  @email.save
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

end
