alias MusicDb.Repo
alias MusicDb.{Artist, Album, Track, Genre}

Repo.insert! %Artist{
  name: "Miles Davis",
  albums: [
    %Album{ title: "Kind Of Blue" },
    %Album{ title: "Cookin' At The Plugged Nickel" }
  ]
}
Repo.insert! %Artist{
  name: "Bill Evans",
  albums: [
    %Album{ title: "You Must Believe In Spring" },
    %Album{ title: "Portrait In Jazz" }
  ]
}
Repo.insert! %Artist{
  name: "Bobby Hutcherson",
  albums: [
    %Album{
      title: "Live At Montreaux",
      genres: [%Genre{ name: "jazz" }],
      tracks: [
        %Track{
          title: "Anton's Ball",
          duration: 761,
          index: 1
        },
        %Track{
          title: "The Moontrane",
          duration: 647,
          index: 2
        },
        %Track{
          title: "Farallone",
          duration: 805,
          index: 3
        },
        %Track{
          title: "Song Of Songs",
          duration: 844,
          index: 4
        },
      ]
    }
  ]
}
