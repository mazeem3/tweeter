class TweetsController < ApplicationController

    before_action except: :show do
      if @current_user.nil?
        redirect_to sign_in_path, notice: "SIGN IN YO"
      end
    end
    def index
        @tweets = Tweet.all
    end
    def feed
        @tweets = @current_user.timeline
    end

    def top
        @top_tweets = User.where('id != ?', @current_user.id)
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new
        @tweet.body = params[:tweet][:body]
        @tweet.user = @current_user

        if @tweet.save
            redirect_to root_path, notice: 'Tweet posted!'
        else
            render :new
        end
    end

    def delete
      Tweet.find(params[:id]).destroy
      redirect_to root_path
    end
end
