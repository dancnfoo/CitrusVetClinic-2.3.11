class PagesController < ApplicationController
  def initialize
    @header_id = "header"
    @footer_id = "footer"
    # Default CSS to highlight menu
    @link_class = "class =\"on\""
  end
  
  # Main page
  def home
    @title = "The Difference is We Care"
    @header_id = "headerIndex"
    @footer_id = "footerIndex"
    # CSS highlight class for first menu item
    @link_class = "on"
  end
  
  # Contact Us
  def contact
    @title = "Contact Us"
  end
  
  # About Us
  def about
    @title = "About Us"
  end

  def vets
    @title = "Veterinarians"
  end
  
  def staff
    @title = "Veterinarian Staff"
  end
  
  def history
    @title = "Our History"
  end
  
  # Emergencies
  def emergency
    @title = "Emergencies"
  end
  
  def promotion
    @title = "Promotions"
  end
  
  def pharmacy
    @title = "Online Pharmacy"
  end
  
  # Veterinary Services
  def service
    @title = "Veterinary Services"
    @link_class = "on"
  end

  def examination
    @title = "Comprehensive Examination"
    @link_class = "on"
  end
  
  def surgery
    @title = "Veterinary Surgery"
    @link_class = "on"
  end
  
  def internal_medicine
    @title = "Internal Medicine"
    @link_class = "on"
  end
  
  def dental
    @title = "Pet Dental Care"
    @link_class = "on"
  end
  
  def pain_management
    @title = "Pain Management"
    @link_class = "on"
  end
  
  def diagnostics
    @title = "Diagnostic Services"
    @link_class = "on"
  end
  
  # Pet Health
  def health
    @title = "Pet Health"
  end
  
  def puppy_kitten
    @title = "Puppy & Kitten Care"
  end
  
  def vaccination
    @title = "Pet Vaccinations"
  end
  
  def senior
    @title = "Senior Pet Care"
  end
  
  def articles
    @title = "Pet Care Articles"
  end
  
  def videos
    @title = "Pet Care Videos"
  end
  
  # Pet Care Resources
  def pet_resource
    @title = "Pet Care Resources"
  end
  
  def helpful_links
    @title = "Helpful Links" 
  end

  # News
  def news
    @title = "News"
  end
  
  # Payment Options
  def payment
    @title = "Payment Options"
  end
  
  def care_credit
    @title = "Care Credit"
  end

  def payment_forms
    @title = "Forms of Payment"
  end  
  
  def pet_insurance
    @title = "Pet Insurance"
  end
  
  # New Clients
  def new_client
    @title = "New Clients"
  end 
end
