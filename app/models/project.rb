class Project < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, presence: true

  # use :nullify to disassociate tickets from a project without deleting them,
  # use :delete_all to delete just the tickets and not it's dependencies/callbacks
  # use :destroy if you have callbacks to run on tickets when they are destroyed
  has_many :tickets, :dependent => :delete_all
end
