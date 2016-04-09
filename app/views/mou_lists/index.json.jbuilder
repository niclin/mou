json.array!(@mou_lists) do |mou_list|
  json.extract! mou_list, :id, :title, :description
  json.url mou_list_url(mou_list, format: :json)
end
