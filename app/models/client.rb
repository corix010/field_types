class Client < ActiveRecord::Base
  belongs_to :check
  belongs_to :drop
  belongs_to :radio
end
