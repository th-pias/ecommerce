module Ecommerce
  class Base < ActiveRecord::Base
    self.abstract_class = true
    self.table_name_prefix = 'ecommerce_'
  end
end