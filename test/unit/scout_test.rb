require 'test_helper'

class ScoutTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Scout.new.valid?
  end
end
