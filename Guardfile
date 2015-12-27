guard 'rspec', cmd: "bundle exec rspec", :all_after_pass => false, 
  :failed_mode => :none do
  watch(%r{\Aspec/.+_spec\.rb\z})
  watch(%r{\Apages/(.+)\.rb\z})   { |m| "spec/pages/#{m[1]}_page.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end