class TweetsController < ApplicationController
    def index
        @tweets = if @current_user
                      @current_user.timeline
                  else
                      Tweet.all
                  end
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
        # @tweet.user = @current_user

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
