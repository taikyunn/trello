json.array!(@lists) do |list|
  json.extract! list, :id, :title, :description
  json.start list.start_date
  json.end list.end_date
  json.url list_url(list, format: :html)
end

  
json.array!(@cards) do |card|
  json.extract! card, :id, :title, :memo
  json.start card.start_date
  json.end card.end_date
end