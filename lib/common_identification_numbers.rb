require "common_identification_numbers/version"
require 'common_identification_numbers/base'
require 'common_identification_numbers/polish/nip'
require 'common_identification_numbers/polish/pesel'
require 'common_identification_numbers/polish/regon'
require 'common_identification_numbers/polish/regon9'
require 'common_identification_numbers/polish/regon14'
require 'common_identification_numbers/polish/edg'
require 'common_identification_numbers/polish/identity_card_number'
require 'common_identification_numbers/polish/krs'

if defined?(ActiveModel)
  require 'active_model/validations/nip_validator'
  require 'active_model/validations/pesel_validator'
  require 'active_model/validations/regon_validator'
  require 'active_model/validations/identity_card_number_validator'
end

module CommonIdentificationNumbers
  # Your code goes here...
end
