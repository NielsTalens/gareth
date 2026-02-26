require "test_helper"

class AppTest < Minitest::Test
  def test_root_renders
    get "/"
    assert last_response.ok?
    assert_includes last_response.body, "Feature Proposal"
  end
end
