module API_V1
  class CryptoDecorator < ApplicationDecorator
    decorates :crypto

    # curl -v -H 'Accept: application/sample.api.v1+json' "http://localhost.com:3000/crypto/encode?value=foo"
    def as_json(options = {})
      { value: model.value, encoded: model.value.reverse }.to_json(options)
    end
  end
end