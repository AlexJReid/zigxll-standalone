# zigxll-standalone

A standalone Excel XLL add-in built with [ZigXLL](https://github.com/AlexJReid/zigxll).

## Usage

Once loaded (double click the built .xll - see below), you can use the custom functions in any Excel spreadsheet:

```
=dblit(42)
```

This will return `84` (doubles the input number).

## Building the XLL

If starting from scratch you will need to fetch to get the hash and add that to your build.zig.zon. This has already been done for this repo.

```bash
zig fetch  https://github.com/alexjreid/zigxll/archive/refs/tags/v0.2.4.tar.gz
```

```bash
zig build
```

The XLL will be output to `zig-out/lib/standalone.xll`.

## Adding more functions

Add your Excel functions to `src/functions.zig` using the function in that file as a guide.

## Try out the pre-built XLL

1. Go to the [Actions tab](../../actions) and click on the latest successful workflow run
2. Scroll down to the very bottom and download the **zigxll-standalone** artifact
3. Extract the XLL file from the zip to a safe location - desktop works
4. You will need to unblock it. More info: https://support.microsoft.com/en-gb/topic/excel-is-blocking-untrusted-xll-add-ins-by-default-1e3752e2-1177-4444-a807-7b700266a6fb
5. Double-click `standalone.xll` to load it into Excel

