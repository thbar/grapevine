set -e

mix compile --force --warnings-as-errors
mix format --check-formatted
mix test
mix credo
cd assets && yarn test && cd ..

cd apps/data
mix compile --force --warnings-as-errors
mix test
mix credo
cd ../..

cd apps/socket
mix compile --force --warnings-as-errors
mix format --check-formatted
mix test
mix credo
cd ../..
