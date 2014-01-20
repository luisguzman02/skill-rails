class HeartsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # POST /posts
  # POST /posts.json
  def create
    @heart = Heart.new(heart_params)

    respond_to do |format|
      if @heart.save
        format.html { redirect_to @heart.post, notice: 'Hearted that post!' }
        format.json { render action: 'show', status: :created, location: @heart }
      else
        format.html { redirect_to root_url, notice: 'Had an issue creating that heart.' }
        format.json { render json: @heart.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def heart_params
      params.require(:heart).permit(:post_id)
    end
end
