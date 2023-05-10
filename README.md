# Dart Analysis

Developed for kittens 🐾

---

This package provides lint rules for Dart and Flutter which are recommended by [Effective Dart][effective_dart_link] and [Lint rules][linter_rules_link]. 

## Usage

To use the lints, add as a dev dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  dart_analysis: ^1.0.0
```

Then, add an include in `analysis_options.yaml`:

```yaml
include: package:dart_analysis/analysis_options.yaml
```

## Suppressing Lints

There may be cases where specific lint rules are undesirable. Lint rules can be suppressed at the line, file, or project level.

An example use case for suppressing lint rules at the file level is suppressing the `use_super_parameters` in all code coverage.

### Line Level

To suppress a specific lint rule for a specific line of code, use an `ignore` comment directly above the line:

```dart
class A {
  A({int? x, int? y});
}
class B extends A {
  // ignore: use_super_parameters
  B({int? x, int? y}) : super(x: x, y: y);
}
```

### File Level

To suppress a specific lint rule of a specific file, use an `ignore_for_file` comment at the top of the file:

```dart
// ignore_for_file: use_super_parameters

class A {
  A({int? x, int? y});
}

class B extends A {
  B({int? x, int? y}) : super(x: x, y: y);
}
```

### Project Level

To suppress a specific lint rule for an entire project, modify `analysis_options.yaml`:

```yaml
include: package:dart_analysis/analysis_options.yaml
linter:
  rules:
    use_super_parameters: false
```


[effective_dart_link]:https://dart.dev/guides/language/effective-dart
[linter_rules_link]:https://dart.dev/tools/linter-rules