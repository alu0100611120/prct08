class Matriz
	#Variables
	attr_accessor :m
	
	def initialize (matriz)
		raise ArgumentError, 'El parámetro debe ser una matriz' unless matriz.is_a? Array
		@m = matriz
	end

	def mostrar()
		texto=""
		for i in 0...@m.length do
			if (i>0) then
				texto += "\n"
			end
			for k in 0...@m[i].length do
				texto += "#{@m[i][k]} "
			end
		end
		texto
	end

	def +(o)
		#@result=Matriz.new([[0,0,0],[0,0,0]])
		for i in 0...@m.length do
			for k in 0...@m[i].length do
				@m[i][k] = @m[i][k] + o[i][k]
                        end
		end
		@m
	end
end

