# Fredyshox Tools

## How do I install these formulae?
`brew install fredyshox/tools/<formula>`

Or `brew tap fredyshox/tools` and then `brew install <formula>`.

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Updating

```sh
export VERSION=1.0.0
```

```sh
export URL="https://github.com/fredyshox/ScreenFramer/archive/${VERSION}.tar.gz"
wget $URL
export SHA=$(shasum -a 256 "${VERSION}.tar.gz" | sed 's/ .*//')
sed -i '' "s,url \".*\",url \"${URL}\"," Formula/screenframer.rb
sed -i '' "s,sha256 \".*\",sha256 \"${SHA}\"," Formula/screenframer.rb
rm "${VERSION}.tar.gz"
```
