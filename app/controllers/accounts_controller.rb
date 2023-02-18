class AccountsController < ApplicationController
    before_action :authenticate_account!
    before_action :set_account, only: [:profile]

    def index
        #show user feed
        @posts = Post.active
        @follower_suggestions = Account.where.not(id: current_account.id)
    end

    def profile
        #show user profile
        @posts = @account.posts.active
    end

    def follow_account
        account_id = params[:follow_id]
        Follower.create(follower_id: current_account.id, following_id: follower_id)
    end

    def set_account
        @account = Account.find_by_username(params[:username])
    end

end