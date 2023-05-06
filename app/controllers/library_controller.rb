class LibraryController < ApplicationController
  
  def index
    @tests = Test.all
  end
  
end
