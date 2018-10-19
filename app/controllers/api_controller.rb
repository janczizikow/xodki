# frozen_string_literal: true

class ApiController < ActionController::API
  include Pundit

  before_action :authenticate_user!, unless: :devise_controller?
  after_action :verify_authorized, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?
end
