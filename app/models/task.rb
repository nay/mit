# coding: utf-8

class Task < ActiveRecord::Base
  attr_accessible :created_on, :lifework, :name, :status

  scope :on, ->(date) {where(:created_on => date)}

  before_validation :adjust_status

  def formatted_status
    case status
    when 'new'
      '□'
    when 'done'
      'レ'
    when 'canceled'
      '×'
    end
  end

  private

  def adjust_status
    self.status = 'new' if status != 'done' && status != 'canceled'
  end

end
