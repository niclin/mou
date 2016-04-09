class MouListsController < ApplicationController
  before_action :set_mou_list, only: [:show, :edit, :update, :destroy]

  # GET /mou_lists
  # GET /mou_lists.json
  def index
    @mou_lists = MouList.all
  end

  # GET /mou_lists/1
  # GET /mou_lists/1.json
  def show
  end

  # GET /mou_lists/new
  def new
    @mou_list = MouList.new
  end

  # GET /mou_lists/1/edit
  def edit
  end

  # POST /mou_lists
  # POST /mou_lists.json
  def create
    @mou_list = MouList.new(mou_list_params)

    respond_to do |format|
      if @mou_list.save
        format.html { redirect_to @mou_list, notice: 'Mou list was successfully created.' }
        format.json { render :show, status: :created, location: @mou_list }
      else
        format.html { render :new }
        format.json { render json: @mou_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mou_lists/1
  # PATCH/PUT /mou_lists/1.json
  def update
    respond_to do |format|
      if @mou_list.update(mou_list_params)
        format.html { redirect_to @mou_list, notice: 'Mou list was successfully updated.' }
        format.json { render :show, status: :ok, location: @mou_list }
      else
        format.html { render :edit }
        format.json { render json: @mou_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mou_lists/1
  # DELETE /mou_lists/1.json
  def destroy
    @mou_list.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Mou list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mou_list
      @mou_list = MouList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mou_list_params
      params.require(:mou_list).permit(:title, :description)
    end
end
