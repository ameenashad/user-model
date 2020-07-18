# frozen_string_literal: true

module API
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        version "v1", using: :path
        default_format :json
        content_type :json, 'application/json'
        format :json
        formatter :json,
             Grape::Formatter::ActiveModelSerializers

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: { json: { success: false, error: e.message }}, status: 404)
        end

        rescue_from ActiveRecord::RecordInvalid do |e|
          error_response(message: { json: { success: false, error: e.message}}, status: 422)
        end
      end
    end
  end
end
