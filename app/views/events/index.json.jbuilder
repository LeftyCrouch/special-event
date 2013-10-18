json.array!(@events) do |event|
  json.extract! event, :event_hint_title, :event_hint_descr, :event_hint_pic, :event_timer, :event_title, :event_descr, :event_pic
  json.url event_url(event, format: :json)
end
