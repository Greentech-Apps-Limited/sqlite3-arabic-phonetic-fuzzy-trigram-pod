// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "sqlite3-arabic-phonetic-fuzzy-trigram",
    platforms: [
        .iOS(.v14),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "SQLiteArabicPhoneticFuzzyTrigram",
            targets: ["CSQLiteArabicPhoneticFuzzyTrigram"]
        ),
    ],
    targets: [
        // A custom SQLite FTS5 tokenizer, built as a loadable extension.
        //
        // Only the tokenizer translation unit is compiled here. The SQLite
        // amalgamation (sqlite3.c) is intentionally NOT compiled.
        //
        // Because the source uses SQLITE_EXTENSION_INIT1, every sqlite3_* call
        // is routed through a function-pointer table (sqlite3_api) that the host
        // hands to ..._init() at runtime. So this object has NO link-time
        // dependency on any sqlite3_* symbol — it binds to whichever SQLite
        // instance registers it at runtime (system libsqlite3 or a bundled build
        // such as sqlite3_flutter_libs; that SQLite must have FTS5 enabled).
        //
        // sqlite3.h / sqlite3ext.h are needed only to COMPILE, and are vendored
        // in include/, so nothing is required from the host at build time.
        .target(
            name: "CSQLiteArabicPhoneticFuzzyTrigram",
            path: "Sources/CSQLiteArabicPhoneticFuzzyTrigram",
            publicHeadersPath: "include"
        ),
    ]
)
