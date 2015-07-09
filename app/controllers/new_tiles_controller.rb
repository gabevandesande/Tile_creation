class NewTilesController < ApplicationController
  before_action :set_new_tile, only: [:show, :edit, :update, :destroy]

  # GET /new_tiles
  # GET /new_tiles.json
  def index
    @new_tiles = NewTile.all
  end

  # GET /new_tiles/1
  # GET /new_tiles/1.json
  def show
  end

  # GET /new_tiles/new
  def new
    @new_tile = NewTile.new

  end

  # GET /new_tiles/1/edit
  def edit
  end

  # POST /new_tiles
  # POST /new_tiles.json
  def create
    @new_tile = NewTile.new(new_tile_params)

    respond_to do |format|
      if @new_tile.save
        format.html { redirect_to @new_tile, notice: 'New tile was successfully created.' }
        format.json { render :show, status: :created, location: @new_tile }
      else
        format.html { render :new }
        format.json { render json: @new_tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_tiles/1
  # PATCH/PUT /new_tiles/1.json
  def update
    respond_to do |format|
      if @new_tile.update(new_tile_params)
        format.html { redirect_to @new_tile, notice: 'New tile was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_tile }
      else
        format.html { render :edit }
        format.json { render json: @new_tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_tiles/1
  # DELETE /new_tiles/1.json
  def destroy
    @new_tile.destroy
    respond_to do |format|
      format.html { redirect_to new_tiles_url, notice: 'New tile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_tile
      @new_tile = NewTile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_tile_params
      params.require(:new_tile).permit(:original_image, :quote, :output_image, :font_size, :font_color, :font_outline, :font_style, :border_color, :border_width, :font_outline_width)
    end
end
