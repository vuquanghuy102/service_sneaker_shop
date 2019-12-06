class Api::V1::ProductsController < ApplicationController
  def list_product
    @products = Product.where(active: true)

    respond_to do |format|
      format.json { render json: @products }
      format.xml { render xml: @products }
    end
  end
end
