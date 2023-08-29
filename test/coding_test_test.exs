defmodule CodingTestTest do
  use ExUnit.Case
  doctest CodingTest

  test "solution" do
    assert CodingTest.solution([1,2,3,4],6) == :OK
    assert CodingTest.solution([1,7,1,1,1,5,6,1],3) == :OK
    assert CodingTest.solution([0,4,5,1,8,9,12,3,1],7) == :KO
    assert CodingTest.solution([5,3,3,3,4,100],13) == :OK
    assert CodingTest.solution([5,4,3,2,1,0,1,2,3,4,5],0) == :OK
    assert CodingTest.solution([5,4,3,2,1,1,1,2,3,4,5],0) == :KO
  end
end
