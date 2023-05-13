class HomeController < ApplicationController
	before_action :check_if_user, only: :index

    def index;    end
    def recycle_analyst
    end

    private
    def check_if_user
        if current_user
            redirect_to dashboard_index_path
        end
    end
end
