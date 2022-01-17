class Post2sController < ApplicationController
  before_action :set_post2, only: %i[ show edit update destroy ]

  # GET /post2s
  def index
    @post2s = Post2.all
  end

  # GET /post2s/1
  def show
  end

  # GET /post2s/new
  def new
    @post2 = Post2.new
  end

  # GET /post2s/1/edit
  def edit
  end

  # POST /post2s
  def create
    @post2 = Post2.new(post2_params)

    if @post2.save
      redirect_to @post2, notice: "Post2 was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post2s/1
  def update
    if @post2.update(post2_params)
      redirect_to @post2, notice: "Post2 was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /post2s/1
  def destroy
    @post2.destroy
    redirect_to post2s_url, notice: "Post2 was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post2
      @post2 = Post2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post2_params
      params.require(:post2).permit(:title)
    end
end
