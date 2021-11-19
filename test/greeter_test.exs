defmodule GreeterTest do
  use ExUnit.Case

  test "greet jonas friendly with option :friendly" do
    assert Greeter.hello(:friendly, "jonas") == "hello, jonas"
  end

  test "greets andi friendly with option :friendly" do
    assert Greeter.hello(:friendly, "andi") == "hello, andi"
  end

  test "greets jonas formal with option :formal" do
    assert Greeter.hello(:formal, "jonas") == "welcome, jonas"
  end

  test "greets andi formal with option :formal" do
    assert Greeter.hello(:formal, "andi") == "welcome, andi"
  end

  test "doesnt greet :unpolite" do
    assert Greeter.hello(:rude, "andi") == ""
    assert Greeter.hello(:anything, "") == ""
  end
  test "does only greet friends(andi & jonas)" do
    assert Greeter.hello(:friendly, "hugo") == "leave now"
    assert Greeter.hello(:formal, "hugo") == "leave now"
  end

end
