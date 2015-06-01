json.array!(@guestbooks) do |guestbook|
  json.extract! guestbook, :id, :username, :body
  json.url guestbook_url(guestbook, format: :json)
end
