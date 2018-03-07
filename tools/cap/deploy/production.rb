set :stage, :production
set :deploy_to, '/home/codigo5/alphavillebuffet.com.br'

server 'xomano.codigo5.com.br', user: 'codigo5', roles: %w{web app db}
