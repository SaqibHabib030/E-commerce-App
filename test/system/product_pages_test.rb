require "application_system_test_case"

class ProductPagesTest < ApplicationSystemTestCase
  setup do
    @product_page = product_pages(:one)
  end

  test "visiting the index" do
    visit product_pages_url
    assert_selector "h1", text: "Product Pages"
  end

  test "creating a Product page" do
    visit product_pages_url
    click_on "New Product Page"

    fill_in "Description", with: @product_page.description
    fill_in "Price", with: @product_page.price
    fill_in "Title", with: @product_page.title
    click_on "Create Product page"

    assert_text "Product page was successfully created"
    click_on "Back"
  end

  test "updating a Product page" do
    visit product_pages_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_page.description
    fill_in "Price", with: @product_page.price
    fill_in "Title", with: @product_page.title
    click_on "Update Product page"

    assert_text "Product page was successfully updated"
    click_on "Back"
  end

  test "destroying a Product page" do
    visit product_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product page was successfully destroyed"
  end
end
