class Day < ActiveRecord::Base
  attr_accessible :created_on, :tasks_attributes

  has_many :tasks, :dependent => :destroy, :autosave => true

  accepts_nested_attributes_for :tasks #, :reject_if => ->(attributes){attributes[:name].blank?}

  def self.today
    on(Date.today)
  end

  def self.on(date)
    find_by_created_on(date) || Day.new(:created_on => date)
  end

  def fill_tasks
    until tasks.size == 3
      tasks << Task.new
    end
  end
end
