defmodule CodingTest do
  @moduledoc """
  * Implement a method that will determinate if exists a range of
  * non-negative elements in an array that sum up to a specific non-
  * negative number
  *
  * Example 1 - targetSum 3, numbers = [1,7,1,1,1,5,6,1] - output true (the sum of the elements in range 2 to 4 is 3
  * Example 2 - targetSum 7, numbers = [0,4,5,1,8,9,12,3,1] - output false (no range sums to 7)
  *
  """

  def solution([h|t], target_sum) do
      find_solution([h],t,h, target_sum)
  end

  defp find_solution(_,_,target_sum, target_sum) when target_sum > 0, do: :OK
  defp find_solution(_,[0 | _], _, 0), do: :OK

  defp find_solution(arr, [h | t], current_sum, target_sum) when current_sum < target_sum do
    #Slog.log ["case_less", arr, [h | t], current_sum, target_sum]
    current_sum = current_sum + h
    find_solution(arr ++ [h], t, current_sum, target_sum)
  end

  defp find_solution([h | t], right, current_sum, target_sum) when current_sum > target_sum do
    current_sum = current_sum - h
    find_solution(t, right ,current_sum, target_sum)
  end

  defp find_solution([], [h|t], _, target_sum), do: find_solution([h],t,h, target_sum)

  defp find_solution(_,[],current_sum, target_sum) when current_sum != target_sum do
    :KO
  end

  defp find_solution([],[],_, _), do: :KO

end
