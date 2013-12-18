if Gem::Version.new(Gem::VERSION) < Gem::Version.new('2.1.0') then

  warn "loading plugin patch for Gem::Version"

  class Gem::Version

    def self.correct? version
      warn "checking version string with patch regex"
      version.to_s =~ /\A\s*([0-9]+(?>\.[0-9a-zA-Z]+)*(-[0-9A-Za-z-]+(\.[0-9A-Za-z-]+)*)?)?\s*\z/
    end

  end

end
