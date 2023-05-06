class TestsController < ApplicationController

    def show
        @test= Test.find(3)
    end

    def new
        @test = Test.new
        @test.name = 'Dune'
    end

    def create
        @test = Test.create(name: 
        params[:test][:name]
        )
        render json: @test
    end

end
