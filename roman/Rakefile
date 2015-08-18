begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec, :tag) do |t, task_args|
    t.fail_on_error = false
    if task_args[:tag]
      t.rspec_opts = "--tag #{task_args[:tag]} --color"
    else
      t.rspec_opts = "--color --format documentation"
    end
  end
  task :default => :spec
rescue LoadError
end
