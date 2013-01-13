module CanBe
  class Config
    DEFAULT_CAN_BE_FIELD = :can_be_type
    DEFAULT_DETAILS_NAME = :details

    attr_reader :types

    def field_name(name = nil)
      if name.nil?
        @field_name || CanBe::Config::DEFAULT_CAN_BE_FIELD
      else
        @field_name = name
      end
    end

    def details_name(name = nil)
      if name.nil?
        @details_name || CanBe::Config::DEFAULT_DETAILS_NAME
      else
        @details_name = name
      end
    end

    def types=(types)
      @types = types.map(&:to_s)
    end

    def default_type(type = nil)
      if type.nil?
        @default_type || @types.first
      else
        @default_type = type
      end
    end

    def parse_options(options = {})
      @default_type = options[:default_type].to_s
      @field_name = options[:field_name]
    end

    def details
      @details ||= {}
    end

    def add_details_model(can_be_type, model_symbol)
      self.details[can_be_type] = model_symbol
    end
  end
end
