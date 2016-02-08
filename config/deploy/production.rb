set :stage, :production

#server 'healthuncharted.co', user: 'rails', roles: %w[web app db]
server '159.203.253.134', user: 'rails', roles: %w[web app db]

set :branch, 'master'

set :application, 'uncharted'
set :deploy_to, '/home/rails/apps/uncharted'
