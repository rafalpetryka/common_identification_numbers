module CommonIdentificationNumbers
  module Polish
    class Edg < CommonIdentificationNumbers::Base
      self.pattern =  /^\S{1,26}$/
      def validate
        validate_regexp
      end
    end
  end
end
