# frozen_string_literal: true

# rubocop:disable DateTime
require_dependency "application_controller"

module Admin
  class DashboardController < ApplicationController
    include AdminAccess
    semantic_breadcrumb "Dashboard", :admin_dashboard_index_path
    layout "layouts/admin"

    def index
    end
  end
end
