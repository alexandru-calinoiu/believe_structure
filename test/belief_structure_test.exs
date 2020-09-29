defmodule BeliefStructureTest do
  @moduledoc false

  use ExUnit.Case
  doctest BeliefStructure

  test "adds the extension when the file is missing" do
    assert BeliefStructure.hexify("package") == "package_ex"
  end

  test "does not add the extension when the package contains it already" do
    assert BeliefStructure.hexify("package_ex") == "package_ex"
  end
end
