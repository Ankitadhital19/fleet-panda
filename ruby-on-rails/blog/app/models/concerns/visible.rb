module Visible
   extend ActiveSupport::Concern

   VALID_STATUSES = ['public', 'private', 'archived'] # rubocop:disable Layout/SpaceInsideArrayLiteralBrackets,Style/StringLiterals

   included do
     validates :status, inclusion: { in: VALID_STATUSES }
   end

    class_methods do
      def public_count
        where(status: 'public').count # rubocop:disable Style/StringLiterals
      end
    end

   def archived?
    status == 'archived' # rubocop:disable Style/StringLiterals
  end
end
