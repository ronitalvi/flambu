require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Auction begin price", with: @listing.auction_begin_price
    fill_in "Is available", with: @listing.is_available
    fill_in "Item", with: @listing.item_id
    fill_in "Listing type", with: @listing.listing_type_id
    fill_in "Price per time", with: @listing.price_per_time
    fill_in "Sale price", with: @listing.sale_price
    fill_in "Time unit", with: @listing.time_unit_id
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Auction begin price", with: @listing.auction_begin_price
    fill_in "Is available", with: @listing.is_available
    fill_in "Item", with: @listing.item_id
    fill_in "Listing type", with: @listing.listing_type_id
    fill_in "Price per time", with: @listing.price_per_time
    fill_in "Sale price", with: @listing.sale_price
    fill_in "Time unit", with: @listing.time_unit_id
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
