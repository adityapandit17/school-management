require 'test_helper'

class GuardianDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guardian_detail = guardian_details(:one)
  end

  test "should get index" do
    get guardian_details_url
    assert_response :success
  end

  test "should get new" do
    get new_guardian_detail_url
    assert_response :success
  end

  test "should create guardian_detail" do
    assert_difference('GuardianDetail.count') do
      post guardian_details_url, params: { guardian_detail: { address: @guardian_detail.address, city: @guardian_detail.city, contact: @guardian_detail.contact, email: @guardian_detail.email, name: @guardian_detail.name, qualification: @guardian_detail.qualification, relation: @guardian_detail.relation, state: @guardian_detail.state, student_id: @guardian_detail.student_id, zipcode: @guardian_detail.zipcode } }
    end

    assert_redirected_to guardian_detail_url(GuardianDetail.last)
  end

  test "should show guardian_detail" do
    get guardian_detail_url(@guardian_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_guardian_detail_url(@guardian_detail)
    assert_response :success
  end

  test "should update guardian_detail" do
    patch guardian_detail_url(@guardian_detail), params: { guardian_detail: { address: @guardian_detail.address, city: @guardian_detail.city, contact: @guardian_detail.contact, email: @guardian_detail.email, name: @guardian_detail.name, qualification: @guardian_detail.qualification, relation: @guardian_detail.relation, state: @guardian_detail.state, student_id: @guardian_detail.student_id, zipcode: @guardian_detail.zipcode } }
    assert_redirected_to guardian_detail_url(@guardian_detail)
  end

  test "should destroy guardian_detail" do
    assert_difference('GuardianDetail.count', -1) do
      delete guardian_detail_url(@guardian_detail)
    end

    assert_redirected_to guardian_details_url
  end
end
