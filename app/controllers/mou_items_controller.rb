class MouItemsController < ApplicationController
  before_action :set_mou_list

	def create
	  @mou_item = @mou_list.mou_items.create(mou_item_params)
	  redirect_to @mou_list
	end

	def destroy
	 @mou_item = @mou_list.mou_items.find(params[:id])
	 if @mou_item.destroy
	 	flash[:success] = "備忘已刪除"
	 else
	 	flash[:error] = "刪除失敗"
	 end
	 redirect_to @mou_list
	end


	private

	def set_mou_list
	  @mou_list = MouList.find(params[:mou_list_id])
	end

	def mou_item_params
	  params[:mou_item].permit(:content)
	end
end