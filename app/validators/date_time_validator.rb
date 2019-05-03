class DateTimeValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        # Date変換前のvalueを取り直す
        value = record.send("#{attribute}_before_type_cast")
        begin
            DateTime.parse value if value.present?
        rescue ArgumentError
            record.errors[attribute] << I18n.t('errors.messages.invalid')
        end
    end
end