require 'active_support/inflector'

guard :shell do
  watch(%r{^db/migrate/(.+)\.rb$}) do |m|
    `rake db:migrate:reset`
    `rake db:seed`
    `rake erd`
    `ridgepole -c config/database.yml --export --split --output db/schemas/schema.rb`
    `cat db/schemas/#{m[1].split('_').last}.schema`
  end

  watch(%r{^db/seeds/(.+)\.seeds.rb$}) do |m|
    `rake db:seed:#{m[1].split(File::Separator).join(':')}`
    `rake db:seed:dump EXCLUDE=created_at,updated_at FILE=tmp/db/dump.rb`
    `cat tmp/db/dump.rb`
  end

  watch(/(.*).pdf/) {|m| `open #{m[0]}` }
end

guard :rspec, cmd: "bin/rspec" do
  require "guard/rspec/dsl"
  dsl = Guard::RSpec::Dsl.new(self)

  # Feel free to open issues for suggestions and improvements

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  # Ruby files
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)

  # Rails files
  rails = dsl.rails(view_extensions: %w(erb haml slim))
  dsl.watch_spec_files_for(rails.app_files)
  dsl.watch_spec_files_for(rails.views)

  watch(rails.controllers) do |m|
    [
      rspec.spec.("routing/#{m[1]}_routing"),
      rspec.spec.("controllers/#{m[1]}_controller"),
      rspec.spec.("acceptance/#{m[1]}")
    ]
  end

  watch(%r{^spec/factories/(.+)\.rb$}) do |m|
    rspec.spec.("models/#{m[1].singularize}")
  end

  # Rails config changes
  watch(rails.spec_helper)     { rspec.spec_dir }
  watch(rails.routes)          { "#{rspec.spec_dir}/routing" }
  watch(rails.app_controller)  { "#{rspec.spec_dir}/controllers" }

  # Capybara features specs
  watch(rails.view_dirs)     { |m| rspec.spec.("features/#{m[1]}") }
  watch(rails.layouts)       { |m| rspec.spec.("features/#{m[1]}") }

  # Turnip features and steps
  watch(%r{^spec/acceptance/(.+)\.feature$})
  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$}) do |m|
    Dir[File.join("**/#{m[1]}.feature")][0] || "spec/acceptance"
  end
end
