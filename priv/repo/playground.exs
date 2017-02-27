##############################################
## Ecto Playground
#
# This script sets up a sandbox for experimenting with Ecto. To
# use it, just add the code you want to try into the Playground.play/0
# function below, then execute the script via mix:
#
#   mix run priv/repo/playground.exs
#
# The return value of the play/0 function will be written to the console
#
# To get the test data back to its original state, just run:
#
#   mix ecto.reset
#
alias MusicDb.Repo
alias MusicDb.Models.{Artist, Album, Track}

import Ecto.Query, only: [from: 1, from: 2]
import Ecto.Changeset

defmodule Playground do

  # this is just to hide the "unused import" warnings while we play
  def this_hides_warnings do
    [Artist, Album, Track, Repo]
    from a in "artists"
    from a in "artists", where: a.id == 1
    cast({%{}, %{}}, %{}, [])
  end

  ###############################################
  #
  # PUT YOUR TEST CODE HERE
  #
  ##############################################
  def play do
    query = "tracks"
    |> join(:inner, [t], a in "albums", t.album_id == a.id)
    |> where([t,a], t.duration > 600)
    |> select([t,a], [t.id, t.title, a.title])
    Repo.all(query)
  end

end

# add your test code to Playground.play above - this will execute it
# and write the result to the console
IO.inspect Playground.play
