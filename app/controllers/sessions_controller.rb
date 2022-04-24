class SessionsController < ApplicationController
    def new
    end
  
    def create
      if params[:name] && !params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: "application", action: "hello"
      else
        redirect_to controller: "sessions", action: "new"
      end
    end
  
    def destroy
      session.delete :name
    end
  end