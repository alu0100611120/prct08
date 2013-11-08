require 'rspec'
require 'matriz.rb'
require 'racional.rb'

describe Matriz do
	before :each do
		#Inicializar variables
		@m1 = Matriz.new([[1,1,1],[1,1,1]])
		@m2 = Matriz.new([[2,2,2],[2,2,2]])
		@m3 = Matriz.new([[2,2],[2,2]])
		@m4 = Matriz.new([[Racional.new(1,2),Racional.new(1,2)],[Racional.new(1,2),Racional.new(1,2)]])
	end
	#Sentencias it
		it "Se debe de almacenar una matriz" do
			@m1.class.should == Matriz
		end
		it "Se debe mostrar la matriz" do
			@m1.mostrar.should == "1 1 1 \n1 1 1 "
		end
		it "El operador index debe devolver el valor del contenido" do
			@m1[0].should == [1, 1, 1]
			@m1[0][0].should == 1
		end
		it "Se debe sumar dos matrices" do
			(@m1+@m2).mostrar.should == "3 3 3 \n3 3 3 "
		end
		it "Se debe restar dos matrices" do
                        (@m1-@m2).mostrar.should == "-1 -1 -1 \n-1 -1 -1 "
                end

		it "Se deben multiplicar matrices cuadradas" do
			(@m3*@m3).mostrar.should == "16 16 \n16 16 "
		end
		it "Se debe sumar dos matrices de racionals" do
			(@m4+@m4)[0][0].to_s.should == "1/1"
		end
end


