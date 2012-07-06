# coding: utf-8

class TasksController < ApplicationController

  def index
    @day = Day.today
  end

  def daily
    date = Date.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
    @day = Day.on(date)
  end

  def edit_today
    @day = Day.today
    @day.fill_tasks
  end

  def update_today
    @day = Day.today
    @day.attributes = params[:day]

    if @day.save
      redirect_to root_path, :notice => "今日のタスクを更新しました"
    else
      @day.fill_tasks
      render :index
    end
  end

  def update
    @task = Task.find(params[:id])

    @task.attributes = params[:task].slice(:status)

    @task.save!

    render :text => 'OK'
  end
end
