=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class AccessCodeFormat
    # 
    attr_accessor :format_required

    attr_accessor :format_required_metadata

    # 
    attr_accessor :letter_required

    attr_accessor :letter_required_metadata

    # 
    attr_accessor :minimum_length

    attr_accessor :minimum_length_metadata

    # 
    attr_accessor :number_required

    attr_accessor :number_required_metadata

    # 
    attr_accessor :special_character_required

    attr_accessor :special_character_required_metadata


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format_required' => :'formatRequired',
        :'format_required_metadata' => :'formatRequiredMetadata',
        :'letter_required' => :'letterRequired',
        :'letter_required_metadata' => :'letterRequiredMetadata',
        :'minimum_length' => :'minimumLength',
        :'minimum_length_metadata' => :'minimumLengthMetadata',
        :'number_required' => :'numberRequired',
        :'number_required_metadata' => :'numberRequiredMetadata',
        :'special_character_required' => :'specialCharacterRequired',
        :'special_character_required_metadata' => :'specialCharacterRequiredMetadata'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format_required' => :'String',
        :'format_required_metadata' => :'SettingsMetadata',
        :'letter_required' => :'String',
        :'letter_required_metadata' => :'SettingsMetadata',
        :'minimum_length' => :'String',
        :'minimum_length_metadata' => :'SettingsMetadata',
        :'number_required' => :'String',
        :'number_required_metadata' => :'SettingsMetadata',
        :'special_character_required' => :'String',
        :'special_character_required_metadata' => :'SettingsMetadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'formatRequired')
        self.format_required = attributes[:'formatRequired']
      end

      if attributes.has_key?(:'formatRequiredMetadata')
        self.format_required_metadata = attributes[:'formatRequiredMetadata']
      end

      if attributes.has_key?(:'letterRequired')
        self.letter_required = attributes[:'letterRequired']
      end

      if attributes.has_key?(:'letterRequiredMetadata')
        self.letter_required_metadata = attributes[:'letterRequiredMetadata']
      end

      if attributes.has_key?(:'minimumLength')
        self.minimum_length = attributes[:'minimumLength']
      end

      if attributes.has_key?(:'minimumLengthMetadata')
        self.minimum_length_metadata = attributes[:'minimumLengthMetadata']
      end

      if attributes.has_key?(:'numberRequired')
        self.number_required = attributes[:'numberRequired']
      end

      if attributes.has_key?(:'numberRequiredMetadata')
        self.number_required_metadata = attributes[:'numberRequiredMetadata']
      end

      if attributes.has_key?(:'specialCharacterRequired')
        self.special_character_required = attributes[:'specialCharacterRequired']
      end

      if attributes.has_key?(:'specialCharacterRequiredMetadata')
        self.special_character_required_metadata = attributes[:'specialCharacterRequiredMetadata']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          format_required == o.format_required &&
          format_required_metadata == o.format_required_metadata &&
          letter_required == o.letter_required &&
          letter_required_metadata == o.letter_required_metadata &&
          minimum_length == o.minimum_length &&
          minimum_length_metadata == o.minimum_length_metadata &&
          number_required == o.number_required &&
          number_required_metadata == o.number_required_metadata &&
          special_character_required == o.special_character_required &&
          special_character_required_metadata == o.special_character_required_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format_required, format_required_metadata, letter_required, letter_required_metadata, minimum_length, minimum_length_metadata, number_required, number_required_metadata, special_character_required, special_character_required_metadata].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
