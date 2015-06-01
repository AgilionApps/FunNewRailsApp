class SaveGuestbookEntryJob < ActiveJob::Base
  queue_as :default

  def perform(params)
    Guestbook.create!(params)
  end
end
