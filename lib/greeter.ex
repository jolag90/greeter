defmodule Greeter do
  @moduledoc """
  Documentation for `Greeter`.
  """
  @friends ["jonas", "andi"]
  @types [:friendly, :formal]
  def hello(:friendly, name) when name in @friends, do: "dere, #{name}"

  def hello(:formal, name) when name in @friends, do: "welcome, #{name}"

  def hello(type, _) when type in @types, do: "leave now"

  def hello(_, _), do: ""
end
