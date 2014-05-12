namespace :trusty_cms do
  namespace :extensions do
    namespace :example do
      
      desc "Runs the migration of the Example extension"
      task :migrate => :environment do
        require 'trusty_cms/extension_migrator'
        if ENV["VERSION"]
          ExampleExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          ExampleExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Example to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from ExampleExtension"
        Dir[ExampleExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(ExampleExtension.root, '')
          directory = File.dirname(path)
          mkdir_p Rails.root + directory
          cp file, Rails.root + path
        end
      end  
    end
  end
end
