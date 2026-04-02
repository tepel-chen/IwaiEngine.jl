# Basics

## Parsing from Strings

```@example
using IwaiEngine

template = IwaiEngine.parse("Hello {{ name }}!")
template((name = "Iwai",))
```

## Loading from Files

`IwaiEngine.load` caches compiled templates by file path and mtime.

```julia
template = IwaiEngine.load("views/index.iwai")
html = template((title = "Home",))
```

## Context Values

Render contexts are passed as `NamedTuple`s.

```@example
using IwaiEngine

template = IwaiEngine.parse("{{ title }} / {{ count }}")
template((title = "Todos", count = 3))
```

## Filters

```@example
using IwaiEngine

template = IwaiEngine.parse("""
{{ name|upper }}
{{ missing|default("fallback") }}
{{ values|join(", ") }}
""")

template((name = "iwai", values = [1, 2, 3]))
```

## Autoescape

Autoescape is enabled by default for `{{ ... }}` expressions.

```@example
using IwaiEngine

template = IwaiEngine.parse("""
{{ html }}
{{ html|safe }}
{% autoescape false %}
{{ html }}
{% end %}
""")

template((html = "<b>x</b>",))
```
