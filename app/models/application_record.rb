class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  include Auditable

  after_save :log_change
end
