require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "A post has to have a user associated with it" do
    
	status = Status.new
	status.user_id

    assert !status.save
    assert !status.errors[:user_id].empty?
  end


end
