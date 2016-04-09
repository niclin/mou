class MouItemsController < ApplicationController
  before_action :set_mou_list
  before_action :set_mou_item, except: [:create]

	def create
	  @mou_item = @mou_list.mou_items.create(mou_item_params)
	  redirect_to @mou_list
	end

	def destroy
	 if @mou_item.destroy
	 	flash[:success] = "備忘已刪除"
	 else
	 	flash[:error] = "刪除失敗"
	 end
	 redirect_to @mou_list
	end

	def complete
	  @mou_item.update_attribute(:completed_at, Time.now)
	  redirect_to @mou_list, notice: "該事項完成"
	end

	private

	def set_mou_list
	  @mou_list = MouList.find(params[:mou_list_id])
	end

	def set_mou_item
	  @mou_item = @mou_list.mou_items.find(params[:id])
	end

	def mou_item_params
	  params[:mou_item].permit(:content)
	end
end