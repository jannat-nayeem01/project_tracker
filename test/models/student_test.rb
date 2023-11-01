require "test_helper"

class StudentTest < ActiveSupport::TestCase
  test "should validate presence of name" do 
    student = Student.new 
    assert !student.valid? 
    assert_equal ["can't be blank"], student.errors[:name] 
    end 
    
    test "should validate uniqueness of name" do 
      old_student = students(:one) 
      student = Student.new name: old_student.name 
      assert !student.valid? 
      assert_equal ["has already been taken"], student.errors[:name] 
    end
    test "should validate presence of studentid" do 
      student = Student.new 
      assert !student.valid? 
      assert_equal ["can't be blank"], student.errors[:studentid] 
    end

    test "should validate uniqueness of studentid" do 
      old_student = students(:one) 
      student = Student.new studentid: old_student.studentid
      assert !student.valid? 
      assert_equal ["has already been taken"], student.errors[:studentid]
    end
end
