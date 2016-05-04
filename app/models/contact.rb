class Contact
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :phone_number, :string
  attr_accessor :content, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_format_of :email,
  with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  #validates_presence_of :phone_number,
  #with: /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
  validates_presence_of :content
  validates_length_of :content, :maximum => 1500

end