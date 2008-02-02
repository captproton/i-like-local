class Habitat < ActiveRecord::Base
    belongs_to :city
    belongs_to :user
    has_many :sites
    has_many :advertise_with_us
    has_many :agents
    has_many :brokers
    has_many :landing_pages
    has_many :offices
    has_many :open_homes
    has_many :franchises
    has_many :foreclosures
end
