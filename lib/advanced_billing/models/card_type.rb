# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The type of card used.
  class CardType
    CARD_TYPE = [
      # TODO: Write general description for BOGUS
      BOGUS = 'bogus'.freeze,

      # TODO: Write general description for VISA
      VISA = 'visa'.freeze,

      # TODO: Write general description for MASTER
      MASTER = 'master'.freeze,

      # TODO: Write general description for DISCOVER
      DISCOVER = 'discover'.freeze,

      # TODO: Write general description for AMERICAN_EXPRESS
      AMERICAN_EXPRESS = 'american_express'.freeze,

      # TODO: Write general description for DINERS_CLUB
      DINERS_CLUB = 'diners_club'.freeze,

      # TODO: Write general description for JCB
      JCB = 'jcb'.freeze,

      # TODO: Write general description for SWITCH
      SWITCH = 'switch'.freeze,

      # TODO: Write general description for SOLO
      SOLO = 'solo'.freeze,

      # TODO: Write general description for DANKORT
      DANKORT = 'dankort'.freeze,

      # TODO: Write general description for MAESTRO
      MAESTRO = 'maestro'.freeze,

      # TODO: Write general description for LASER
      LASER = 'laser'.freeze,

      # TODO: Write general description for FORBRUGSFORENINGEN
      FORBRUGSFORENINGEN = 'forbrugsforeningen'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CARD_TYPE.include?(value)
    end
  end
end
