module Jekyll
  module Watcher
    extend self

    alias_method :original_listen_ignore_paths, :listen_ignore_paths

    def listen_ignore_paths(config)
      original_listen_ignore_paths(config) + [%r{^_drafts/}]
    end
  end
end