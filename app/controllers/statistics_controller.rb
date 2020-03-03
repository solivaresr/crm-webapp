# frozen_string_literal: true

class StatisticsController < ApplicationController #:nodoc:
  def sales_by_product
    @products = Product.all.collect { |e| [e.name, e.id] }
    return unless params[:id].present?

    @sales = Policy.where(product_id: params[:id])
    render json: @sales.to_json(
      include: [
        product: { only: :name },
        client: { only: :social_reason },
        sale_executive: { only: :name }
      ]
    )
  end

  def clients_by_executive
    @executives = SaleExecutive.all.collect { |e| [e.name, e.id] }
    return unless params[:id].present?

    @clients = Policy.where(sale_executive_id: params[:id])
    render json: @clients.to_json(
      include: [
        product: { only: :name },
        client: { only: :social_reason },
        sale_executive: { only: :name }
      ]
    )
  end
end
