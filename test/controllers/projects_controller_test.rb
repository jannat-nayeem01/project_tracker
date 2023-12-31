require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @project = projects(:one)
  end

  test "should get index" do
    sign_in users(:one)

    get projects_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)

    get new_project_url
    assert_response :success
  end

  test "should create project" do
    sign_in users(:one)

    assert_difference("Project.count") do
      post projects_url, params: { project: { name: "Mr. J", url: "www.j.com" } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    sign_in users(:one)

    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)

    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    sign_in users(:one)

    patch project_url(@project), params: { project: { name: @project.name, url: @project.url } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    sign_in users(:one)

    assert_difference("Project.count", -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
