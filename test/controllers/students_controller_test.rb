require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @student = students(:one)
    @project = projects(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get students_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)

    get new_student_url
    assert_response :success
  end

  test "should create student" do
    sign_in users(:one)

    assert_difference("Student.count") do
      post project_students_url(@project), params: { student: { name: "student2", studentid: "9999" } }
    end

    assert_redirected_to project_url(@project)
  end

  test "should show student" do
    sign_in users(:one)

    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)

    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    sign_in users(:one)

    patch student_url(@student), params: { student: { name: @student.name, studentid: @student.studentid } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    sign_in users(:one)

    assert_difference("Student.count", -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
