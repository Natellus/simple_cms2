class DemoController < ApplicationController

  layout false

  def index
    render('index')
  end

  def hello
    render('hello')
  end

  def other_hello
    redirect_to(:action => 'index')

  end

  def git
    redirect_to('https://github.com/Natellus')

  end


end
