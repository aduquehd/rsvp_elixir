defmodule Rsvp.Events do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field(:title, :string)
    field(:location, :string)
    field(:date, Ecto.DateTime)
    field(:description, :string)
    field(:quantity_available, :integer, default: 25)
    timestamps()
  end

  @required_fields ~w(title location date)a
  @optional_fields ~w(description)a

  def changeset(event, params \\ %{}) do
    event
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> validate_change(:date, &must_be_future/2)
  end

  def must_be_future(_, value) do
    Ecto.DateTime.compare(value, Ecto.DateTime.utc())
    |> get_error
  end

  defp get_error(comparision) when comparision == :lt do
    [date: "Cannot be in the past"]
  end

  defp get_error(_) do
    []
  end
end
