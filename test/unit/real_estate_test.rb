require File.dirname(__FILE__) + '/../test_helper'

class RealEstateTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def test_tagging

    estate = RealEstate.create(
            :contact_name => "jimmey",
            :contact_street => "123 commmisar lane")
    estate.save
    estate.tag 'Elvis, Thirller', :separator => ','
    estate.save
    
    estate.reload
    
    assert estate.tagged_with? ('Elvis')
    assert estate.tagged_with? ('Thirller')
    assert_equal ['Elvis', 'Thirller'], estate.tag_names
    
    assert_equal 1, RealEstate.find_tagged_with(:any => ['Elvis', 'Thirller']).size
    assert_equal 1, RealEstate.find_tagged_with(:all => ['Elvis', 'Thirller']).size
  end
  
  def test_failing_create
    assert true
  end
  def test_truth
    assert true
  end
end
