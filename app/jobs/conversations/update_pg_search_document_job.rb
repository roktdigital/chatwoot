class Conversations::UpdatePgSearchDocumentJob < ApplicationJob
  def perform(contact_id)
    contact = Contact.find(contact_id)
    update_pg_search_document(contact)
  end

  def update_pg_search_document
    conversations = contact.try(:conversations)
    conversations.each(&:update_pg_search_document)
  end
end