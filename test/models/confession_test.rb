require 'test_helper'

class ConfessionTest < ActiveSupport::TestCase
  test "the truth" do
    a = Confession.new

    assert_not a.save
  end
end
