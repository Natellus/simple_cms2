class DemoController < ApplicationController

  layout 'application'

  def index
    render('index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render('hello')

  end

  def other_hello
    redirect_to(:action => 'index')

  end

  def git
    redirect_to('https://github.com/Natellus')

  end

  def escape_output
  end


end
