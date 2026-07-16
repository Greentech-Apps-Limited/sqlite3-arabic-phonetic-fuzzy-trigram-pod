#
# Be sure to run `pod lib lint sqlite3-arabic-phonetic-fuzzy-trigram.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'sqlite3-arabic-phonetic-fuzzy-trigram'
  s.version          = '0.1.0'
  s.summary          = 'SQLite FTS5 Arabic Phonetic Fuzzy Trigram Tokenizer'


  s.description      = <<-DESC
A custom SQLite FTS5 tokenizer designed for Arabic and Latin text with diacritics support, phonetic matching, and fuzzy search capabilities.
                       DESC

  s.homepage         = 'https://github.com/Greentech-Apps-Limited/sqlite3-arabic-phonetic-fuzzy-trigram-pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shahriar Nasim Nafi' => 'shahriarnasim.nafi@gmail.com' }
  s.source           = { :git => 'https://github.com/Greentech-Apps-Limited/sqlite3-arabic-phonetic-fuzzy-trigram-pod', :tag => s.version.to_s }


  s.ios.deployment_target  = '14.0'
  s.osx.deployment_target  = '10.13'

  # Sources live under Sources/ so the same files feed both CocoaPods and
  # Swift Package Manager (see Package.swift). Only the tokenizer .c is compiled;
  # sqlite3.h / sqlite3ext.h are private headers needed to compile against. The
  # SQLite amalgamation (sqlite3.c) is intentionally NOT compiled — the extension
  # binds to the host app's SQLite (via sqlite3_api) at runtime.
  s.source_files        = 'Sources/CSQLiteArabicPhoneticFuzzyTrigram/**/*.{c,h}'
  s.public_header_files = 'Sources/CSQLiteArabicPhoneticFuzzyTrigram/include/sqlite3-arabic-phonetic-fuzzy-trigram.h'
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/Sources/CSQLiteArabicPhoneticFuzzyTrigram/include"'
  }
  s.requires_arc = false

end
