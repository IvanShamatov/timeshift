# This is monkeypatch of 
# NoMethodError: undefined method `collection?' 
# for #<PowerEnum::Reflection::EnumerationReflection:>
# So that way rake erd:generate hook can run and generate entity relational diagram
#
# If this method will be implemented in future this monkey patch won't affect it

class PowerEnum::Reflection::EnumerationReflection
  unless respond_to? (:collection?)
    def collection?
      true
    end
  end
end