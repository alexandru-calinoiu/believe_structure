defmodule BeliefStructure.Hexify do
  @moduledoc false

  @spec name(String.t)::String.t
  def name(package) do
    package(package)
  end

  @spec package(String.t)::String.t
  defp package(package) do
    package <> "_ex"
  end
end
