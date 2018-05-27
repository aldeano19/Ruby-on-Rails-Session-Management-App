class PagesController < ApplicationController
  def welcome
    render("pages/welcome")
  end

  def validate_registration
    user = User.new(username: params["username"], password: params["password"], password_confirmation: params["confirm-password"])

    unless user.valid?
      $registration_errors = user.errors

      return redirect_to("#")

    end

    user.save

    session[:user_id] = user.id
    session[:username] = user.username

    redirect_to("/profile")
  end

  def login
    user = User.find_by(username: params["username"]).try(:authenticate, params["password"])

    # TODO: This global is used to send an error message to the next route, is there a better way to do it
    $login_failed = user.nil?

    puts "FAILED LOGIN = #{$login_failed}"

    return redirect_to("/") if $login_failed

    session[:user_id] = user.id
    session[:username] = user.username

    redirect_to("/profile")
  end

  def show_profile
    @username = session[:username]
    @user_id = session[:user_id]
    render("pages/profile")
  end

  def logout
    session.clear

    redirect_to("/")
  end
end

