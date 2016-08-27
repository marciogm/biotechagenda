class Event < ApplicationRecord
  validates_presence_of :name, :on => :create
  validates_presence_of :description, :on => :create
  validates_presence_of :start_date, :on => :create
  validates_presence_of :end_date, :on => :create
end
