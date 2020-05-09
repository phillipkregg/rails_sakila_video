class HomeController < ApplicationController
  def index

    #sql = "select * from actor";
    #@results = execute_statement(sql)
    #binding.pry

    @results = Actor.all

    #inding.pry

  end

  # def execute_statement(sql)
  #   results = ActiveRecord::Base.connection.execute(sql)

  #   if results.present?
  #     return results
  #   else
  #     return nil
  #   end
  # end
end
