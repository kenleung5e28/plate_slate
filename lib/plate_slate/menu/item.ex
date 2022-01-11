defmodule PlateSlate.Menu.Item do
  use Ecto.Schema
  import Ecto.Changeset
  alias PlateSlate.Menu.Item

  schema "items" do
    field :added_on, :date
    field :description, :string
    field :name, :string
    field :price, :decimal

    belongs_to :category, PlateSlate.Menu.Category

    many_to_many :tags, PlateSlate.Menu.ItemTag,
      join_through: "item_taggings"

    timestamps()
  end
end
