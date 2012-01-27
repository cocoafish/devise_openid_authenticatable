module Devise
  module Models
    module OpenidAuthenticatable
      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def find_by_identity_url(identity_url)
          find(:first, :conditions => {:identity_url => identity_url})
        end
        def find_by_guid(guid)
          find(:first, :conditions => {:guid => guid})
        end
      end
      
      module InstanceMethods
        def valid_for_authentication?
        end
      end
    end
  end
end
