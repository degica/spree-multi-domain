require 'durable_decorator'

Spree::BaseMailer.class_eval do
  durably_decorate :from_address, mode: 'strict', sha: '96518deb992f2dd687015dfd6ce346b800c98ac6' do
    from_address_original unless @store.try(:email)
    @store.email
  end
end
