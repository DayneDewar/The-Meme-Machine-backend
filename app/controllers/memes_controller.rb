class MemesController < ApplicationController

    def index
        @memes = Meme.order(:id)
        render json: @memes
    end

    def show
        @meme = Meme.find(params[:id])
        render json: @meme
    end

    def new
        @meme = Meme.new
        render json: @meme
    end

    def create
        @meme = Meme.create(meme_params)
        render json: @meme
    end

    def edit
        @meme = Meme.find(params[:id])
        render json: @meme
    end

    def update
        @meme = Meme.find(params[:id])
        @meme.update(meme_params)
        render json: @meme
    end

    def destroy
        @meme = Meme.find(params[:id])
        @meme.destroy
        render json: @meme
    end



    private

    def meme_params
        params.permit(:user_id, :name, :top, :bottom, :image, :likes)
    end


end
