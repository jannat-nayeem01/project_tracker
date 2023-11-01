require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "should validate presence of name" do 
    project = Project.new 
    assert !project.valid? 
    assert_equal ["can't be blank"], project.errors[:name] 
    end 
    
    test "should validate uniqueness of name" do 
      old_project = projects(:one) 
      project = Project.new name: old_project.name 
      assert !project.valid? 
      assert_equal ["has already been taken"], project.errors[:name] 
    end
          
end
