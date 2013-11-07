$:.unshift File.dirname('matriz_spec.rb') + './lib/*'

require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

task :default => :spec

	desc "run rspec tests"
	task :spec do
		sh "rspec -Ilib ./lib/* -Ispec spec/matriz_spec.rb --format documentation"
	end
	
	desc "build HTML"
	task :spec do
		sh "rspec -Ilib ./lib/* -Ispec spec/matriz_spec.rb --format html > pruebas.html"
	end

