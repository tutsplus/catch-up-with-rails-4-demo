class Contact
  include ActiveModel::Model
  attr_accessor :first_name, :last_name, :subject, :message

  validates_presence_of :first_name, :last_name, :message
  validates_length_of :message, minimum: 10
end
