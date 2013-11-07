require "./lib/leer_fichero.rb"

class Matriz
	#Variables
	@m
	def initialize (cadena)
		cadena.class
		raise ArgumentError, 'El parámetro debe ser texto' unless cadena.is_a? String
		@m = to_m(cadena)
	end
end
