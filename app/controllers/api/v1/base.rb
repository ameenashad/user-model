require 'grape-swagger'

module API
  module V1
    class Base < Grape::API
      mount API::V1::Users

      add_swagger_documentation \
        base_path: '',
        format: :json,
        api_version: 'v1',
        hide_documentation_path: true,
        mount_path: '/api/v1/swagger_doc',
        doc_version: '1.0.0',
        info: {
          title: "Inkoop"
        }
    end
  end
end
