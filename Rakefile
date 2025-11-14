# frozen_string_literal: true

require 'rake/testtask'

pattern = ENV['TEST'] || 'test/**/*_test.rb'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.pattern = pattern
  t.verbose = true
end

desc 'Run Steep type checking'
task :steep do
  sh 'steep check'
end
