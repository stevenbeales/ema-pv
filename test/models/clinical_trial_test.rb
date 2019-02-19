require 'test_helper'

class ClinicalTrialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save clinical trial without code" do
    clinical_trial = ClinicalTrial.new
    assert_not clinical_trial.save
  end
end
