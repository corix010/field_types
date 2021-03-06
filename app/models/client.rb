class Client < ActiveRecord::Base
  belongs_to :check
  belongs_to :drop
  belongs_to :radio
  has_many :client_checks, :dependent => :destroy

  #validates_presence_of :name, :message => "is required."
  #validates_uniqueness_of :name, :message => "must be unique."
  validates :name, :presence => true, :uniqueness => true

  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  # validates_confirmation_of :password
  #validates_length_of :password, :minimum => 6, :maximum => 10
  validates :password, :presence => true, :confirmation => true, :length => {:minimum => 6, :maximum => 10}

  #validates_format_of :phone, :with => /^(\+\d)*\s*(\(\d{3}\)\s*)*\d{3}(-{0,1}|\s{0,1})\d{2}(-{0,1}|\s{0,1})\d{2}$/, :message => "must be a valid telephone number."

  # :image_url
  #validates_format_of :image_url, :with => /^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+).[a-z]{2,5}(:[0-9]{1,5})?(\/.)?$/ix, :message => "must be a valid URL."

  # validates_numericality_of :merit, :message => "must be a valid number."
  validates_inclusion_of :merit, :in => 1..10

  #validates_numericality_of :payment
  validates :payment, :numericality => {:greater_than => 0.0, :less_than => 100.99}
  # validates_format_of :payment, :with => /^(\d+(?:[\.\,]\d{2})?)$/, :message => "must be a numerical value."
  # :due

  def create_or_update_client_checks(check_ids=[])
  	self.client_checks.destroy_all
  	check_ids.each do |check_id|
  		#self.create(:client_id => client.id, :check_id => check_id)
  		client_check = ClientCheck.new(:client_id => self.id, :check_id => check_id)
  		client_check.save
  	end
  end
end
