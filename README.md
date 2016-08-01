# CulturalTrailApi

To start  (assuming you have erlang and elixir installed):

 * make sure postgres is running with `user: postgres password: postgres`
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

----


* AWS Console Sign in [here](https://935471808360.signin.aws.amazon.com/console) 
	- ask Kyle for the ssh key file

* Prod Url [here](ec2-52-206-122-212.compute-1.amazonaws.com) 
	* to start prod server `udo MIX_ENV=prod mix phoenix.server`
	* make sure `/config/prod.secrets.exs exists (ask Kyle)

* ssh to server `ssh -i "cultural_trail_api.pem" ubuntu@ec2-52-206-122-212.compute-1.amazonaws.com`

