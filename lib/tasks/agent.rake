namespace :agent do
  task :start => :environment do
    c = ChatClient.new("localhost", 12345, "Web-agent")
    c.run
  end
end

