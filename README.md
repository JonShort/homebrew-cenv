# homebrew-cenv
For use with homebrew tap

## Auditing the Formula
This should be done before making any changes, as it helps catch any formatting issues (whitespace etc.).

Create a local homebrew tap: (skip if this already exists)

```bash
brew tap-new cenv-release/check --no-git
```

Copy the formula to check into the local homebrew tap:

```bash
cp ./Formula/cenv.rb $(brew --repository)/Library/Taps/cenv-release/homebrew-check/Formula
```

Run `brew audit` on the formula:

```bash
brew audit --strict --online cenv-release/check/cenv
```

## Updating the version

- Update the version field to match the latest published version, e.g:

```diff
-  version "1.0.0"
+  version "2.0.0"
```

- Generate a new [SHA256 Hash](https://en.wikipedia.org/wiki/SHA-2) for the published archive, e.g:

```bash
shasum -a 256 ./cenv-macos-x86_64.tar.gz
```

- Then replace the `sha256` with the new hash, e.g:

```diff
-  sha256 "184a76c8c622aa15a601f9a0c806c071570c6d61bb403da2b382fcbf523b59c5"
+  sha256 "295b87d9d733bb26b712g0b1d917d182681d7e72cc514eb3c493gdcg634c60d6"
```

## Resources

- Homebrew Formula cookbook: https://docs.brew.sh/Formula-Cookbook
- Official homebrew-core repo: https://github.com/Homebrew/homebrew-core
- Formula class documentation: https://rubydoc.brew.sh/Formula
- Helpful blogpost on this topic: https://federicoterzi.com/blog/how-to-publish-your-rust-project-on-homebrew/

