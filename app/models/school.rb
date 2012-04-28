class School < ActiveRecord::Base
  attr_accessible :admissions_url, :app_url, :deadline, :name, :program, :rank, :location
end
