class AccountsController < ApplicationController
    before_action :authenticate_account!

    def index
        #show user feed
        @posts = Post.active
    end

    def show
        #show user profile
    end


end
