require "./lib/leer_fichero.rb"

class Matriz
	#Variables
	@m
	def initialize (matriz)
		raise ArgumentError, 'El parámetro debe ser una matriz' unless matriz.is_a? Array
		@m = matriz
	end
end
