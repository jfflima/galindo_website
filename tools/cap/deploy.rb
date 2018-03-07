lock '3.5.0'

set :application, 'alphavillebuffet'
set :repo_url, 'git@bitbucket.org:codigo5/alphavillebuffet-website.git'

set :linked_files, fetch(:linked_files, []).push('.env')
set :linked_dirs, fetch(:linked_dirs, []).push('web/app/uploads')

after 'deploy:starting', 'composer:install_executable'
# after 'deploy:publishing', 'deploy:update_option_paths'
after 'deploy:symlink:release', 'symlink:public'

SSHKit.config.command_map[:composer] = -> { "php #{shared_path.join("composer.phar")}" }
