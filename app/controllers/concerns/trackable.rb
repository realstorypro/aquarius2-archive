# frozen_string_literal: true

# Unifies event tracking for the application
module Trackable
  extend ActiveSupport::Concern

  # Unified user identification
  # @param [Object] user user to identify, defaults to current_user
  def identify(user = current_user)
    AnalyticsProxy.instance.identify(user)
  end

  # Unified event tracking
  # @param [Hash] params options to track
  # @option params [String] :event Name of the event
  # @option params [Hash] :props Properties to track
  def track(params)
    params[:user] = current_user if current_user

    # record event in ahoy
    ahoy.track params[:event], params[:props]

    # record even in segment via proxy
    AnalyticsProxy.instance.track(params)
  end
end
