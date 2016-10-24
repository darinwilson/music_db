# MusicDb

**A playground for Ecto using a simple music database**

I created this repo to have examples for my talk at ElixirConf 2016, "Leveling Up With Ecto". The video is available [here](https://www.youtube.com/watch?v=QE7bpqpDoKo) and [the slides are here.](https://dl.dropboxusercontent.com/u/14884175/leveling_up_with_ecto.pdf)

## Requirements
  * Elixir >= 1.2
  * Postgres >= 9.0

## Setup
  * clone this repo
  * make sure Postgres is running
  * edit the database configuration in `config/dev.exs` to match your system
  * `mix deps.get`
  * `mix ecto.setup`

This will create the database and load some sample data. If you see
```
The database for MusicDb.Repo has been created
```
you should be all set.

## Working with the playground

Open up `priv/repo/playground.exs` in your editor, and find the `play` function (it's fairly well marked with a `PUT YOUR TEST CODE HERE` comment).

Put whatever code you'd like in there, then run the script with:
```
mix run priv/repo/playground.exs
```
The return value of `play/0` will be written to the console

## Restoring the data

After playing around for awhile, your data will probably get into a weird state. You can restore it back to its original state by running
```
mix ecto.reset
```
The test data is set up in `priv/repo/seeds.exs` - feel free to make any changes to that script if there are things you would like to add to the sample data.

## Schemas

This app sets up four schemas: `Artist`, `Album`, `Track`, and `Genre`. For testing purposes, they're fairly stripped down, and have a minimal configuration. See the corresponding modules for details.

As you might expect, Artist `has_many` Albums, which `has_many` Tracks. Albums has a `many_to_many` relationship with Genres.




