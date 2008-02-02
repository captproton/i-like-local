class AddForeclosureStatus < ActiveRecord::Migration
  def self.up
      down
      
      myforeclosure = Foreclosure.create( :status               => "Notice of Default (Pre-Foreclosure)")
      myforeclosure.save
      
      
      myforeclosure = Foreclosure.create( :status               => "Lis Pendens (Pre-Foreclosure)")
      myforeclosure.save
      
      myforeclosure = Foreclosure.create( :status               => "Notice of Trustee Sale (Auction)")
      myforeclosure.save
      
      myforeclosure = Foreclosure.create( :status               => "Notice of Foreclosure Sale (Auction)")
      myforeclosure.save
      
      myforeclosure = Foreclosure.create( :status               => "REO - Bank Owned (Pre-Foreclosure)")
      myforeclosure.save
      
      myforeclosure = Foreclosure.create( :status               => "Notice of Default(Pre-Foreclosure)")
      myforeclosure.save
      
      
  end

  def self.down
      Foreclosure.delete_all
  end
end
