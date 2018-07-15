## swiftlint
<https://github.com/realm/SwiftLint>

Install swiftlint with homebrew.
```
brew install swiftlint
```

Add some script to "Run Script" in "Build Phases".
```
if which swiftlint >/dev/null; then
    swiftlint autocorrect
    swiftlint
else
    echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
```

Edit `.swiftlint.yml`.

## License
MIT License.

Other OSS licenses are in `/licenses`.
