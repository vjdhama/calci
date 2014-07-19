require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:unit) do |t|
  t.pattern = './spec/unit/{,/*/**}/*_spec.rb'
end

task :default => :unit
