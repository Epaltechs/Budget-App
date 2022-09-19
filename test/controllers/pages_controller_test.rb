# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get Epaltechs Budget App' do
    get pages_yhello_url
    assert_response :success
  end
end
