class Message < ActiveRecord::Base
  attr_accessible :body

  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'

  scope :unread, -> { where(read: false) }


def deliver!(args)
  sending  = args[:sending]
  receving = args[:receiving]

  self.sender = sending
  # raise ArgumentError, "both sender and receiver must be specified" unless sending && receiving
end

end
