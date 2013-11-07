require "rspec"
require "./lib/matriz.rb"

describe Matriz do
	before :each do
		#Inicializar variables
		@m1 = Matriz.new([[1,1,1],[1,1,1]])
		@m2 = Matriz.new([[2,2,2],[2,2,2]])
	end
	#Sentencias it
		it "Se debe de almacenar una matriz" do
			@m1.class.should == Matriz
		end
end

