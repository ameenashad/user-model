# frozen_string_literal: true

module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults
      resource :users do

        # Users#warning_messages
        desc 'User warning messages'
        get do
          render json: {
            has_membership_renewal_invoice_due: true
          }
        end
      end
    end
  end
end
