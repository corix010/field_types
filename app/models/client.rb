class Client < ActiveRecord::Base
  belongs_to :check
  belongs_to :drop
  belongs_to :radio
  has_many :client_checks, :dependent => :destroy

  def create_or_update_client_checks(check_ids=[])
	self.client_checks.destroy_all
	check_ids.each do |check_id|
		#self.create(:client_id => client.id, :check_id => check_id)
		client_check = ClientCheck.new(:client_id => self.id, :check_id => check_id)
		client_check.save
	end
        
  end

end
