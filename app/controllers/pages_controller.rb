class PagesController < ApplicationController

  def home
  	@projects = Project.all
  end

  def info

  end
  
end