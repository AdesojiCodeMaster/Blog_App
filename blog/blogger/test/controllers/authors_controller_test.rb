# rubocop:disable Style/NumericPredicate
# rubocop:disable Style/GuardClause
# rubocop:disable Lint/RedundantCopDisableDirective
require 'test_helper'

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author = authors(:one)
  end

  test 'should get index' do
    get authors_url
    assert_response :success
  end

  test 'should get new' do
    get new_author_url
    assert_response :success
  end

  test 'should create author' do
    assert_difference('Author.count') do
      post authors_url, params: { author: { email: @author.email, password: @author.password, password_confirmation: @author.password_confirmation, username: @author.username } } # rubocop:disable Layout/LineLength
    end

    assert_redirected_to author_url(Author.last)
  end

  test 'should show author' do
    get author_url(@author)
    assert_response :success
  end

  test 'should get edit' do
    get edit_author_url(@author)
    assert_response :success
  end

  test 'should update author' do
    patch author_url(@author), params: { author: { email: @author.email, password: @author.password, password_confirmation: @author.password_confirmation, username: @author.username } } # rubocop:disable Layout/LineLength
    assert_redirected_to author_url(@author)
  end

  test 'should destroy author' do
    assert_difference('Author.count', -1) do
      delete author_url(@author)
    end

    assert_redirected_to authors_url
  end
end
# rubocop:enable Style/NumericPredicate
# rubocop:enable Style/GuardClause
# rubocop:enable Lint/RedundantCopDisableDirective
