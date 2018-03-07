namespace :symlink do
  desc <<-DESC
    Create a symbolic link from `current` capistrano current release folder
    pointing to `public` folder:

      $ ln -s `pwd`/current/web html

    It is required to be supported by apache2 servers like "Nexcess".
  DESC
  task :public do
    on release_roles(:all) do
      execute :ln, '-sf', current_path.join('web'), deploy_path.join('html')
    end
  end
end
