class TestsController < ApplicationController

    def new
        @test = Test.new
        @test.name = 'Dune'
    end

    def create
        @test = Test.create(title: 
        params[:test][:name]
        )
        render json: @test
    end

end
