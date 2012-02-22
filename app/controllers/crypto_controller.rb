class CryptoController < ApplicationController
  respond_to :html, :json

  # GET /encode
  #
  # Permet d'encoder une string
  #
  # ==== Parameters
  # * +string+ - (String) - Chaine de caractére
  # ==== Example request
  # GET http://example.com/encode.json?value=foo
  # === Response
  #   { "origin": 'foo', 'encoding': 'oof' }
  #
  def encode
    @crypto = Crypto.new
    @crypto.encode(params[:value])

    respond_with do |format|
      format.json { render :json => @crypto.to_json, :status => 200 }
      format.html
    end
  end

  # GET /decode
  #
  # Permet decoder une string
  #
  # ==== Parameters
  # * +string+ - (String) - Chaine de caractére
  # ==== Example request
  # GET http://example.com/decode.json?value=oof
  # === Response
  #   { "origin": 'oof', 'encoding': 'foo' }
  #
  def decode
    @crypto = Crypto.new
    @crypto.decode(params[:value])

    respond_with do |format|
      format.json { render :json => @crypto.to_json, :status => 200 }
      format.html
    end
  end

end
