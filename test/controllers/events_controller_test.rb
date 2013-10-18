require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { event_descr: @event.event_descr, event_hint_descr: @event.event_hint_descr, event_hint_pic: @event.event_hint_pic, event_hint_title: @event.event_hint_title, event_pic: @event.event_pic, event_timer: @event.event_timer, event_title: @event.event_title }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { event_descr: @event.event_descr, event_hint_descr: @event.event_hint_descr, event_hint_pic: @event.event_hint_pic, event_hint_title: @event.event_hint_title, event_pic: @event.event_pic, event_timer: @event.event_timer, event_title: @event.event_title }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
