class ApplicationController < ActionController::Base

    before_action :authenticate_user!
    before_action :check_admin, except: [:new, :create, :edit, :update, :index]

    private

    def check_admin
        unless current_user.admin?
        flash[:alert] = "Acceso denegado. Debes ser administrador."
        redirect_to root_path
        end
    end

end
