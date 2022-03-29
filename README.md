# PokeAPI-ObjC
API wrapper for the [PokeAPI](https://pokeapi.co/) written in Objective-C.

## Example

List Pokemon API example
```objective-c
@import PokeAPI_ObjC;

[PokemonService listPokemonWithSuccess:^(NSArray<Pokemon *> * _Nonnull pokemon) {
  NSLog(@"%@", pokemon);
} failure:^(NSError * _Nonnull error) {
  NSLog(@"%@", error);
}];
```

ImageDownloader example
```objective-c
@import PokeAPI_ObjC;

[ImageDownloader getImage:url success:^(UIImage * _Nonnull image) {
  UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
} failure:^(NSError * _Nonnull error) {
  NSLog(@"%@", error);
}];
```

## Requirements

## Installation

PokeAPI-ObjC is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PokeAPI-ObjC', :git => 'git@github.com:paul-verkada/PokeAPI-ObjC.git'
```

## Author

paul-verkada, paul.wong@verkada.com

## License

PokeAPI-ObjC is available under the MIT license. See the LICENSE file for more info.
