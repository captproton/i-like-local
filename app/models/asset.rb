# == Schema Information
# Schema version: 2
#
# Table name: assets
#
#  id              :integer       not null, primary key
#  filename        :string(255)   
#  width           :integer       
#  height          :integer       
#  content_type    :string(255)   
#  size            :integer       
#  attachable_type :string(255)   
#  attachable_id   :integer       
#  updated_at      :datetime      
#  created_at      :datetime      
#

class Asset < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true

  has_attachment :storage => :file_system, 
    :thumbnails => { :bigthumb => '400>', :thumb => '120>', :tiny => '50>' }, 
    :max_size => 5.megabytes,
    :path_prefix => "public/image_assets"


end
