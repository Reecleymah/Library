class TestsController < ApplicationController

    def show
        
        #Colocaremos el comodin para recibirlo como parametro para saber que buscar
        #params[] es donde recibimos todos los paramtros de donde sea que provengan
        
        @test= Test.find(params[:id]) 

        #Puede ser con ':id' o puede colocarse así @test= Test.find(params['id'])
        #Se usan los dos puntos por que es un simbolo.

    end

    def edit

        @test = Test.find(params[:id])
 
        #Forma de saber si un objeto esta guardado en la base de datos, osea una instancia de un modelo esta guardada
        #Es utilizar puts "\n\n\n #{@test.persisted?} \n\n\n"

        #Es importante mencionar  que el comando anterior imprimira en la terminal, y en caso de que
        #si se encuentre en la base de datos mostrara true en caso contrario mostrará false.
    end

    def update # Método del objeto por eso usamos @test.update

        @test = Test.find(params[:id])
        @test.update(
        name: 
            params[:test][:name],
        content: 
            params[:test][:content]
        )

        redirect_to @test

    end

    def new

        #Aqui enviamos la variable @test con un test nuevo osea una nueva instancia del objeto con todos los campos vacios
        @test = Test.new
    end

    def create # Método de clase por eso usamos Test.create
        
        @test = Test.create(
        name: 
            params[:test][:name],
        content: 
            params[:test][:content]
        )
        render json: @test
    end

    def destroy

        @test = Test.find(params[:id])
        @test.destroy
        redirect_to root_path

    end

end
