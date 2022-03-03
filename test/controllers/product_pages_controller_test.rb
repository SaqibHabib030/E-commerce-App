require "test_helper"

class ProductPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_page = product_pages(:one)
  end

  test "should get index" do
    get product_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_product_page_url
    assert_response :success
  end

  test "should create product_page" do
    assert_difference('ProductPage.count') do
      post product_pages_url, params: { product_page: { description: @product_page.description, price: @product_page.price, title: @product_page.title } }
    end

    assert_redirected_to product_page_url(ProductPage.last)
  end

  test "should show product_page" do
    get product_page_url(@product_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_page_url(@product_page)
    assert_response :success
  end

  test "should update product_page" do
    patch product_page_url(@product_page), params: { product_page: { description: @product_page.description, price: @product_page.price, title: @product_page.title } }
    assert_redirected_to product_page_url(@product_page)
  end

  test "should destroy product_page" do
    assert_difference('ProductPage.count', -1) do
      delete product_page_url(@product_page)
    end

    assert_redirected_to product_pages_url
  end
end
