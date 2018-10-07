# Note

[![Build Status](https://travis-ci.org/Scior/MinimumWKWebView.svg?branch=master)](https://travis-ci.org/Scior/MinimumWKWebView)
[![Coverage Status](https://coveralls.io/repos/github/Scior/MinimumWKWebView/badge.svg)](https://coveralls.io/github/Scior/MinimumWKWebView)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=Scior_MinimumWKWebView&metric=vulnerabilities)](https://sonarcloud.io/api/project_badges/measure?project=Scior_MinimumWKWebView&metric=vulnerabilities)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=Scior_MinimumWKWebView&metric=bugs)](https://sonarcloud.io/api/project_badges/measure?project=Scior_MinimumWKWebView&metric=bugs)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## SwiftLint

<https://github.com/realm/SwiftLint>

Install swiftlint with homebrew.

```shell
brew install swiftlint
```

Add some script to "Run Script" in "Build Phases".

```shell
if which swiftlint >/dev/null; then
    swiftlint autocorrect
    swiftlint
else
    echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
```

Edit `.swiftlint.yml`.

## fastlane

<https://github.com/fastlane/fastlane>

Install fastlane with homebrew.

```shell
brew cask install fastlane
```

Add `Gemfile` to the project root.

```text
source "https://rubygems.org"

gem "fastlane"
```

And then,

```shell
# with bundler
bundle install --path vendor/bundle
bundle exec fastlane init
```

Edit `fastfile/Fastfile` to define jobs.

```yaml
# Sample
default_platform(:ios)

platform :ios do
  desc "Test"
  lane :test do
    run_tests(devices: ["iPhone 6s", "iPhone 8 Plus"])
  end
end
```

An example command to run tests:

```shell
bundle exec fastlane test
```

To shut up swiftlint against files in `vector/bundle`, 
add an exclusion rule to `.swiftlint.yml`.

```yaml
excluded:
- vendor/bundle
```

## Travis CI

Doc: <https://docs.travis-ci.com/>  
My page:
<https://travis-ci.org/Scior/MinimumWKWebView>

Create `.travis.yml`.

```yml
language: objective-c
osx_image: xcode9.4

script: fastlane test
```

Connect Travis CI with your GitHub and enable a trigger on your Travis page.

## License

MIT License.

Other OSS licenses are in `/licenses`.
