namespace :grab do
  task :photos => :environment do
    PhotoTask::PhotoTask.new.perform
  end
end