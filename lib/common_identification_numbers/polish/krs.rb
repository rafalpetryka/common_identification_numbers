module CommonIdentificationNumbers
  module Polish
    class Krs < CommonIdentificationNumbers::Base
      self.pattern =  /^\d{1,10}$/
      def validate
        validate_regexp
      end
    end
  end
end
