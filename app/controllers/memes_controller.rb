require 'open-uri'
        
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

    def generate
        file = open("https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=#{params[:image]}&bottom=#{params[:bottom]}&top=#{params[:top]}&font_size=50&font=Impact", {
            "x-rapidapi-key" => 'd45c4bf44bmsh5794f268d449d19p18f503jsn618a9ca69a76',
            "x-rapidapi-host" => 'ronreiter-meme-generator.p.rapidapi.com'}
        )
        meme = Meme.create(meme_params)
        meme.meme_image.attach(io: file, filename: "test.jpg", content_type: 'image/jpg')
        # puts response.read_body
        # generated_meme = RestClient.get "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=#{params[:image]}&bottom=#{params[:bottom]}&top=#{params[:top]}&font_size=50&font=Impact",{
        #     "x-rapidapi-key": 'd45c4bf44bmsh5794f268d449d19p18f503jsn618a9ca69a76',
        #     "x-rapidapi-host": 'ronreiter-meme-generator.p.rapidapi.com'
        # }
        # meme_image_array = JSON.parse(meme_images)
        # create_meme = Meme.create(meme_params)
        # byebug
        url_for(meme.meme_image)
        render json: meme
    end

    private

    def meme_params
        params.permit(:user_id, :name, :top, :bottom, :image, :likes)
    end


end
