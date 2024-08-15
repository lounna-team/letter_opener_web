# frozen_string_literal: true

LetterOpenerWeb::Engine.routes.draw do
  delete 'clear',                 to: 'letters#clear',    as: :clear_letters
  delete ':id',                   to: 'letters#destroy',  as: :delete_letter
  get    '/',                     to: 'letters#index',    as: :letters
  get    ':id(/:style)',          to: 'letters#show',     as: :letter
  get    ':id/attachments/:file', to: 'letters#attachment'
end
