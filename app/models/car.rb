class Car < ActiveRecord::Base
  belongs_to :user
  has_many :services, :dependent => :delete_all
end
