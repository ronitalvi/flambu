require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { auction_begin_price: @listing.auction_begin_price, is_available: @listing.is_available, item_id: @listing.item_id, listing_type_id: @listing.listing_type_id, price_per_time: @listing.price_per_time, sale_price: @listing.sale_price, time_unit_id: @listing.time_unit_id } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { auction_begin_price: @listing.auction_begin_price, is_available: @listing.is_available, item_id: @listing.item_id, listing_type_id: @listing.listing_type_id, price_per_time: @listing.price_per_time, sale_price: @listing.sale_price, time_unit_id: @listing.time_unit_id } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
