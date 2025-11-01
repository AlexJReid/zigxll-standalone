# zigxll-standalone

A standalone Excel XLL add-in built with [ZigXLL](https://github.com/AlexJReid/zigxll).

Built automatically with GitHub Actions for Windows.

## Usage

Once loaded, you can use the custom functions in any Excel spreadsheet:

```
=dblit(42)
```

This will return `84` (doubles the input number).

## Building from Source

```bash
zig build
```

The XLL will be output to `zig-out/lib/standalone.xll`.

## Adding Functions

Add your Excel functions in `src/functions.zig` and register them in `src/main.zig`.

## Using Pre-built XLL

1. Go to the [Actions tab](../../actions) and click on the latest successful workflow run
2. Download the `standalone.xll` artifact
3. Extract the XLL file from the zip
4. Double-click `standalone.xll` to load it into Excel
5. If prompted by security warnings, click "Enable" to allow the add-in
