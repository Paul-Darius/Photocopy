require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase

  test "should validate presence of file_url" do
    purchase = Purchase.new
    assert !purchase.valid?
    assert_equal ["can't be blank"], purchase.errors[:file_url]
  end

end
