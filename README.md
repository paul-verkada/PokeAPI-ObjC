# PokeAPI-ObjC
API wrapper for the [PokeAPI](https://pokeapi.co/) written in Objective-C.

## Example

List Pokemon API example
```objective-c
import PokeAPI

PokeAPI.listPokemon() { result in
  switch result {
  case .success(let pokemon):
    print(pokemon)
  case .failure(let error):
    print(error)
  }
}
```

ImageDownloader example
```objective-c
import PokeAPI

ImageDownloader.getImage(withURL: url) { result in
  switch result {
  case .success(let image):
    let imageView = UIImageView(image: image)
  case .failure(let error):
    print(error)
  }
}
```

## Requirements

## Installation

PokeAPI-ObjC is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PokeAPI-ObjC'
```

## Author

paul-verkada, paul.wong@verkada.com

## License

PokeAPI-ObjC is available under the MIT license. See the LICENSE file for more info.
