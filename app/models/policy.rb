class Policy < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :sale_executive
end
