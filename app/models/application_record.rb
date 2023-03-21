class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  #DB to not recognize this class in the table 
end
