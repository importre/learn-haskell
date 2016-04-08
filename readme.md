<!-- TOC -->
# learn-haskell

## 환경설정 with [Atom][atom]

뭐든 환경이 갖춰진 상태여야... :trollface:

<img src="https://cloud.githubusercontent.com/assets/1744446/14372437/9a690fbe-fd7b-11e5-9b65-d7c86fd5e2b2.png" with="100px" />

### ghc 설치
> glasgow haskell compiler

설치 후 `ghc`앱 실행하여 안내에 따라 환경변수를 설정

#### 직접 설치
[여기][ghc-download]에서 다운로드 후 설치

#### or cask로 설치 (추천)
```sh
$ brew cask install ghc
```

### [ide-haskell] (Atom plugin)
```sh
$ stack install stylish-haskell
$ cabal update
$ cabal install happy
$ cabal install stylish-haskell
$ cabal install ghc-mod hlint
$ cabal install HUnit
$ apm install language-haskell haskell-ghc-mod ide-haskell-cabal ide-haskell autocomplete-haskell
```


## 시작하기

### [cabal] 프로젝트 생성하기
> Cabal is a system for building and packaging Haskell libraries and programs.

```sh
$ cabal init
```

적절히 설정

### Main.hs
`cabal` 파일 설정 (아마 `cabal init`할 때 설정됐을 것임)

```cabal
executable learn-haskell
  -- ...
  main-is:             Main.hs
  -- ...
```

메인 작성!

```haskell
main = do
  -- do something
```

### 실행
```sh
$ cabal run
```

### 테스트
```sh
$ cabal test
```

#### Test-Suite 추가
`cabal` 파일에 추가

```cabal
Test-Suite FibonacciTestSuite
  type:                exitcode-stdio-1.0
  main-is:             FibonacciTest.hs
  build-depends:       base >=4.8 && <4.9,
                       HUnit
  hs-source-dirs:      test, src
  default-language:    Haskell2010
```


## License

Apache 2.0 © [Jaewe Heo][importre]






[atom]: https://atom.io/
[ghc-download]: https://www.haskell.org/downloads
[ide-haskell]: https://atom.io/packages/ide-haskell
[importre]: http://import.re
[cabal]: https://www.haskell.org/cabal/
