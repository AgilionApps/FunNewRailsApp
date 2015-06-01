class WelcomeController < ApplicationController
  def index
    @guestbook = Guestbook.all
    @new_guest = Guestbook.new
  end

  def sign
    guest = Guestbook.new(guestbook_params)
    if guest.save
      redirect_to welcome_index_path
    else
      redirect_to welcome_index_path
    end
  end

  private

  def guestbook_params
    params.require(:guestbook).permit(:username, :body)
  end
end
