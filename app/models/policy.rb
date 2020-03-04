class Policy < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :sale_executive

  def format_start_date
    start_date.strftime('%d del %m de %Y')
  end

  def format_end_date
    end_date.strftime('%d del %m de %Y')
  end
end
