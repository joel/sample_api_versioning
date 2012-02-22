class CryptoController < ApplicationController
  respond_to :html, :json, :api_v1

  # GET /encode
  #
  # Permet d'encoder une string
  #
  # ==== Parameters
  # * +string+ - (String) - Chaine de caractére
  # ==== Example request
  # GET http://example.com/encode.json?value=foo
  # curl -v -H 'Accept: application/json' "http://localhost.com:3000/crypto/encode?value=foo"
  # curl -v -H 'Accept: application/sample.api.v1+json' "http://localhost.com:3000/crypto/encode?value=foo"
  # === Response
  #   { "origin": 'foo', 'encoding': 'oof' }
  #
  def encode
    @crypto = Crypto.new
    @crypto.encode(params[:value])

    respond_with(@crypto)
  end

  # GET /decode
  #
  # Permet decoder une string
  #
  # ==== Parameters
  # * +string+ - (String) - Chaine de caractére
  # ==== Example request
  # GET http://example.com/decode.json?value=oof
  # curl -v -H 'Accept: application/json' "http://localhost.com:3000/crypto/decode?value=oof"
  # curl -v -H 'Accept: application/sample.api.v1+json' "http://localhost.com:3000/crypto/decode?value=oof"
  # === Response
  #   { "origin": 'oof', 'encoding': 'foo' }
  #
  def decode
    @crypto = Crypto.new
    @crypto.decode(params[:value])

    respond_with(@crypto)
  end

end
