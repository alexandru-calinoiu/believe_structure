defmodule BeliefStructure do
  @moduledoc """
  This module provides the public API for hexify'ing a package name
  ## Examples

    iex> BeliefStructure.hexify("package")
    "package_ex"

    iex> BeliefStructure.hexify("package_ex")
    "package_ex"
  """

  @spec hexify(String.t()) :: String.t()
  def hexify(package) do
    case String.ends_with?(package, "ex") do
      true -> package
      false -> BeliefStructure.Hexify.name(package)
    end
  end
end
