class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :content, presence: true
  validates_format_of :email, :message => "邮箱格式不正确!", :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
