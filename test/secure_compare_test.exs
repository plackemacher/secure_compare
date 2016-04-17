defmodule SecureCompareTest do
  use ExUnit.Case
  doctest SecureCompare

  import SecureCompare

  test "strings" do
    assert compare("test", "test")
    assert compare("無", "無")
  end

  test "char lists" do
    assert compare('test', 'test')
    assert compare('無', '無')
  end

  test "empty and nil values" do
    assert !compare(nil, nil)
    assert !compare(nil, "")
    assert !compare("", nil)
    assert !compare('', nil)
  end
end
