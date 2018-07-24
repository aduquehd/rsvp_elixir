unless(Rsvp.EventQueries.any()) do
  Rsvp.EventQueries.create(
    Rsvp.Events.changeset(%Rsvp.Events{}, %{
      date: "2018-08-28 00:00:00",
      title: "Python Meetup",
      location: "Bogota"
    })
  )

  Rsvp.EventQueries.create(
    Rsvp.Events.changeset(%Rsvp.Events{}, %{
      date: "2018-08-22 00:00:00",
      title: "React.js Meetup",
      location: "Medellín"
    })
  )

  Rsvp.EventQueries.create(
    Rsvp.Events.changeset(%Rsvp.Events{}, %{
      date: "2018-08-27 00:00:00",
      title: "Elixir Meetup",
      location: "Medellín",
      description: "Elixir is the better language I learned"
    })
  )
end
