class Event < ApplicationRecord

  scope :by_month, -> { all.group_by { |e| e.start_date.strftime("%B - %Y") } }

  validates_presence_of :name, :on => :create
  validates_presence_of :description, :on => :create
  validates_presence_of :start_date, :on => :create
  validates_presence_of :end_date, :on => :create
  validates_presence_of :country, :on => :create
  validates_presence_of :state, :on => :create
  validates_presence_of :city, :on => :create
end
